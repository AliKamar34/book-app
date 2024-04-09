import 'package:dio/dio.dart';

abstract class Failuer {
  final String errorMessage;

  const Failuer(this.errorMessage);
}

class ServerFalier extends Failuer {
  ServerFalier(super.errorMessage);

  factory ServerFalier.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFalier('Connection time out with Api server');
      case DioExceptionType.sendTimeout:
        return ServerFalier('send time out with Api server');

      case DioExceptionType.receiveTimeout:
        return ServerFalier('receive time out with Api server');

      case DioExceptionType.badCertificate:
        return ServerFalier('badCertificate with Api server');

      case DioExceptionType.badResponse:
        return ServerFalier.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFalier('Request to Api server was canceld');

      case DioExceptionType.connectionError:
        return ServerFalier('Connection error with Api server');

      case DioExceptionType.unknown:
        return ServerFalier('Unexepected error, Please try again later ');
      default:
        return ServerFalier(
            'Opps there was an error , please try again later!');
    }
  }
  factory ServerFalier.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFalier(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFalier('Your requset not found , try again later!');
    } else if (statusCode == 500) {
      return ServerFalier('internal server error , try again later!');
    } else {
      return ServerFalier('Opps there was an error , please try again later!');
    }
  }
}
