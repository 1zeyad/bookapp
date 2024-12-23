// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:bookapp/core/helper/Errors/Exception.dart';
import 'package:equatable/equatable.dart';

import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/core/helper/Api/ApiService.dart';

part 'fetch_similar_state.dart';

class FetchSimilarCubit extends Cubit<FetchSimilarState> {
  FetchSimilarCubit({
    required this.apiService,
 }) : super(FetchSimilarInitial());
 
 final ApiService apiService;


  Future<void> featchSimillarBooks({required String category}) async {
    emit(FetchSimilarLoading());

    try {
      var result = await apiService.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=relevance&q=$category');
      emit(FetchSimilarSucess(List_books: result));
    } on ServerException catch (e) {

      emit(FetchSimilarFailure(messageError: e.errormodel!.error!.message ??  e.messagefailure ?? 'dddd'));
    }
  }
}

