import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/Utils/api_service.dart';
import 'package:bookly_app/core/errors/failuer_errors.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.getBooks(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBookModel(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFalier.fromDioError(e));
      }
      return left(ServerFalier.fromDioError(e.toString() as DioException));
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeturredBooks() {

    throw UnimplementedError();
  }
}
