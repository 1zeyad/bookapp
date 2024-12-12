// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:bookapp/core/helper/Errors/Exception.dart';
import 'package:equatable/equatable.dart';

import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/core/helper/Api/ApiService.dart';

part 'fetch_general_books_state.dart';

class FetchGeneralBooksCubit extends Cubit<FetchGeneralBooksState> {
  final ApiService apiService;
  FetchGeneralBooksCubit(
    this.apiService,
  ) : super(FetchGeneralBooksInitial());

  Future<void> featchGeneralBooks() async {
    emit(LoadingFetchGeneralBooks());

    try {
      var result = await apiService.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming');
      emit(SuccessFetchGeneralBooks(List_books: result));
    } on ServerException catch (e) {
      emit(FaluireFetchGeneralBooks(
          Erro_message: e.errormodel.errors[0].toString()));
    }
  }
}
