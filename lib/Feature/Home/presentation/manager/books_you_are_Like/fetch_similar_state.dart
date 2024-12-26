part of 'fetch_similar_cubit.dart';

sealed class FetchSimilarState extends Equatable {
  const FetchSimilarState();

  @override
  List<Object> get props => [];
}

final class FetchSimilarInitial extends FetchSimilarState {}


final class FetchSimilarSucess extends FetchSimilarState {
   final List<BookModel> List_books;

  FetchSimilarSucess({required this.List_books});

}


final class FetchSimilarFailure extends FetchSimilarState {

    final String messageError;

 FetchSimilarFailure({required this.messageError});

}


final class FetchSimilarLoading extends FetchSimilarState {}


