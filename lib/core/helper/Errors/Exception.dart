import 'dart:developer';

import 'package:bookapp/core/helper/Errors/ErrorModel.dart';
import 'package:dio/dio.dart';

import 'dart:convert';  // لإضافة دعم تحويل JSON

class ServerException implements Exception{
final Errormodel errormodel ;

  ServerException({required this.errormodel});
  


}



  void HandleException(DioException e) {
      log('in handle exception');
    if (e.response != null) {
      switch (e.type) {
       
        case DioExceptionType.connectionTimeout:
          
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
        case DioExceptionType.unknown:
          throw ServerException(errormodel: Errormodel.fromJson(e.response!.data));
        case DioExceptionType.badResponse:
         log('in bad response');
          switch (e.response!.statusCode) {
             
            
            case 400:
                log("Responseeeeeee"  + e.response!.data.toString());
                     throw ServerException(
              
   errormodel: Errormodel.fromJson(e.response!.data ),
 

  
);

                // output :Responseeeeeee{error: {code: 400, message: Required parameter: q, errors: [{message: Required parameter: q, domain: global, reason: require
 
            case 401:
            
            
            case 403:
            case 404:
            
          
            case 409:
            case 422:
             throw ServerException(
              
   errormodel: Errormodel.fromJson(e.response!.data ),
 

  
);

      
          }
      }
    } 
    
  log('in the end');}

// ,

