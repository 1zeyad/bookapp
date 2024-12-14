// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

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
      log('sdsdsfsfsfs');
        log('sdsdsfsfsfs');
    emit(LoadingFetchGeneralBooks());

    try {
      var result = await apiService.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=programming');
          
      emit(SuccessFetchGeneralBooks(List_books: result));
        
    }on ServerException catch (e) {
  
      log('40000000000000000000000000000000');
      
      log('errrrror');
      emit(FaluireFetchGeneralBooks(
           Erro_message:e.errormodel.error!.message ?? 'sds'
        //    e.errormodel.errors?.isNotEmpty == true
        // ? e.errormodel.errors![0].message ?? 'Unknown error'
        // : e.errormodel.message ?? 'Unknown error' 
        ));
    }
      // emit(FaluireFetchGeneralBooks(
      //     Erro_message: 
      //     e.errormodel.message!));
    }
  }

