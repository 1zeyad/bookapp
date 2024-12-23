// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/core/helper/Api/ApiService.dart';
import 'package:bookapp/core/helper/Errors/Exception.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(
    this.apiService,
  ) : super(BestSellerInitial());
   final ApiService apiService;

  Future<void> featchSellerBooks() async {
    emit(Loading_BestSellerBooks());

    try {
      var result = await apiService.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming');
      emit(Success_BestSellerBooks(List_books: result));
    } on ServerException catch (e) {

      emit(FaluireFetch_BestSeller_Books(
          Erro_message: e.errormodel!.error!.message ??  e.messagefailure ?? 'dddd'));
    }
  }
}

