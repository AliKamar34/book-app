part of 'search_result_cubit.dart';

abstract class SearchResultState extends Equatable {
  const SearchResultState();

  @override
  List<Object> get props => [];
}

final class SearchResultInitial extends SearchResultState {}

class SearchResultLoading extends SearchResultState {}

class SearchResultFailuer extends SearchResultState {
  final String errMessage;
  const SearchResultFailuer(this.errMessage);
}

class SearchResultSuccess extends SearchResultState {
  final List<BookModel> books;
  const SearchResultSuccess(this.books);
}