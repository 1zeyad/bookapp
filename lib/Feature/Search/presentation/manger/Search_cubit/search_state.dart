part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<BookModel> List_books;

  SearchSuccess({required this.List_books});
}
final class SearchLoading extends SearchState {

}
final class SearchFailure extends SearchState {
  final String error_message;

  SearchFailure({required this.error_message});
}



