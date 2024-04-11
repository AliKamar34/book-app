import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failuer_errors.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
    Future<Either<Failuer, List<BookModel>>> fetchSearchedBooks(
      {required String category});
}