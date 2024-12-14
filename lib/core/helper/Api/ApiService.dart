import 'dart:developer';

import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/core/helper/Errors/Exception.dart';
import 'package:dio/dio.dart';

class ApiService {
final Dio dio;

  ApiService(this.dio){
      // dio.options.baseUrl =endpoints.baseUrl;  //path =enpoint    

    // dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(       // console بيطبعلك كل البيانات فى 
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true
    ));

  }
  // DioConsumer(){
  
    
  // }
     
  @override
  Future delete(String url, {String? token, Object? data, Map<String, dynamic>? queryparms}) async {
    try {
      final response = await dio.delete(url, data: data, queryParameters: queryparms);
      return response.data;
    } on DioException catch (e) {
      HandleException(e);
    }
  }

  @override
  Future get(String url, {String? token, Object? data, Map<String, dynamic>? queryparms}) async {
    try {
      final response = await dio.get(url, queryParameters: queryparms);
      List<BookModel> books=[];
      for(var item in response.data["items"]){
      books.add(BookModel.fromJson(item));
      }
       return books;
    } on DioException catch (e) {
      log('catch e '+ e.toString());
      //  log('E Exception =>${e.response!.data.toString()}');
        // log(e.response!.data.toString());
      HandleException(e);
    }
  }

  @override
  Future patch(String url, {String? token,  Object? data, Map<String, dynamic>? queryparms}) async {
    try {
      final response = await dio.patch(url, data: data, queryParameters: queryparms);
      return response.data;
    } on DioException catch (e) {
      HandleException(e);
    }
  }

  @override
  Future post(String url, {String? token, Object? data, Map<String, dynamic>? queryparms}) async {
    try {
      final response = await dio.post(url, data: data , queryParameters: queryparms);
      return response.data;
    } on DioException catch (e) {
      HandleException(e);
    }
  }

  @override
  Future put(String url, {String? token, Object? data, Map<String, dynamic>? queryparms}) async {
    try {
      final response = await dio.put(url, data: data , queryParameters: queryparms);
      return response.data;
    } on DioException catch (e) {
     
      HandleException(e);
    }
  }
}