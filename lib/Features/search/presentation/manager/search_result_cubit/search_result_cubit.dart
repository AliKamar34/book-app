import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchResult({required String category}) async {
    emit(SearchResultLoading());
    var result =await searchRepo.fetchSearchedBooks(category: category);
    result.fold(
      (failuer) {
        emit(
          SearchResultFailuer(failuer.errorMessage),
        );
      },
      (books) {
        emit(
          SearchResultSuccess(books),
        );
      },
    );
    
  }
}
