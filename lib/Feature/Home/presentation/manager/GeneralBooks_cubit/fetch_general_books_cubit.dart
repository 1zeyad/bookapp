// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/core/helper/Api/ApiService.dart';
import 'package:bookapp/core/helper/Errors/Exception.dart';
import 'package:equatable/equatable.dart';

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
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=programming');
          
      emit(SuccessFetchGeneralBooks(List_books: result));
        
    }on ServerException catch (e) {
      log('into server exception');
      if( e.messagefailure != null  ){
       
         emit(FaluireFetchGeneralBooks(
           Erro_message: e.messagefailure!
      
        ));
      }
      else{
         emit(FaluireFetchGeneralBooks(
           Erro_message: e.errormodel!.error!.message  ?? 'fdfdf'
      
        ));
      }
  

      
    
     
    }
      // emit(FaluireFetchGeneralBooks(
      //     Erro_message: 
      //     e.errormodel.message!));
    }
  }

