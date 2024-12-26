// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:bookapp/core/helper/Errors/Exception.dart';
import 'package:equatable/equatable.dart';

import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/core/helper/Api/ApiService.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this.apiService,
  ) : super(SearchInitial());

   final ApiService apiService;

  Future<void> featchSearch_result(String category) async {

    emit(SearchLoading());

    try {
      var result = await apiService.get(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=$category');
          
      emit(SearchSuccess(List_books: result));
        
    }on ServerException catch (e) {
     
      if( e.messagefailure != null  ){
       
         emit(SearchFailure(
           error_message: e.messagefailure!
      
        ));
      }
      else{
         emit(SearchFailure(
           error_message: e.errormodel!.error!.message  ?? 'fdfdf'
      
        ));
      }
  

      
    
     
    }
      // emit(FaluireFetchGeneralBooks(
      //     Erro_message: 
      //     e.errormodel.message!));
    }
}
