import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/faluer_errors.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Faliuer,List<BookModel>>>  fetchBestSellerBooks();
 Future<Either<Faliuer,List<BookModel>>> fetchFeturredBooks();
}
