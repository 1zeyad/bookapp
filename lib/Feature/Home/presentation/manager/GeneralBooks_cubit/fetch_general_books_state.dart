part of 'fetch_general_books_cubit.dart';

sealed class FetchGeneralBooksState extends Equatable {
  const FetchGeneralBooksState();

  @override
  List<Object> get props => [];
}

final class FetchGeneralBooksInitial extends FetchGeneralBooksState {}

final class SuccessFetchGeneralBooks extends FetchGeneralBooksState {
  final List<BookModel> List_books ;

  SuccessFetchGeneralBooks({required this.List_books});
}
final class LoadingFetchGeneralBooks extends FetchGeneralBooksState {

}
final class FaluireFetchGeneralBooks extends FetchGeneralBooksState {
final  String Erro_message ;

   FaluireFetchGeneralBooks({required this.Erro_message});
}


