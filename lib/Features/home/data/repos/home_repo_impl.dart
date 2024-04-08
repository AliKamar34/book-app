import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/faluer_errors.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Faliuer, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliuer, List<BookModel>>> fetchFeturredBooks() {
    // TODO: implement fetchFeturredBooks
    throw UnimplementedError();
  }
}