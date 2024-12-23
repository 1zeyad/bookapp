import 'dart:developer';
import 'package:bookapp/core/helper/Errors/ErrorModel.dart';
import 'package:dio/dio.dart';
import 'dart:convert'; // لإضافة دعم تحويل JSON

class ServerException implements Exception {
late Errormodel? errormodel;
  final String? messagefailure;

  ServerException({this.errormodel, this.messagefailure});
}

void HandleException(DioException e) {
  log('in handle exception');

  if (e.response != null) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerException(messagefailure: 'Connection timeout with API server');

      case DioExceptionType.sendTimeout:
        throw ServerException(messagefailure: 'Send timeout with API server');

      case DioExceptionType.receiveTimeout:
        throw ServerException(messagefailure: 'Receive timeout with API server');

      case DioExceptionType.badCertificate:
        throw ServerException(messagefailure: 'Bad certificate');

      case DioExceptionType.cancel:
        throw ServerException(messagefailure: 'The process is cancelled');

      case DioExceptionType.connectionError:
        throw ServerException(messagefailure: 'Connection error');

      case DioExceptionType.unknown:
        throw ServerException(messagefailure: 'No internet connection');

      


      case DioExceptionType.badResponse:
        log('in bad response');
        switch (e.response!.statusCode) {
          case 400:
         
           throw ServerException(
              errormodel: Errormodel.fromJson(e.response!.data),
            );
           
          case 401:
          throw ServerException(messagefailure: 'bad respone 401');
          case 403:
          throw ServerException(messagefailure: 'bad respone 403');
          
          case 404:
          throw ServerException(messagefailure: 'bad respone 404');
             
           
          case 409:
          throw ServerException(messagefailure: 'bad respone 409');
        
         
        }

     
    
     default:
        throw ServerException(messagefailure: 'An unexpected error occurred');
        }
  } 

}
