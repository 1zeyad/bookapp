import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/Feature/Home/presentation/manager/books_you_are_Like/fetch_similar_cubit.dart';

import 'package:bookapp/Feature/Home/presentation/views/Book_detail_view.dart';
import 'package:bookapp/Feature/Home/presentation/views/Homeview.dart';
import 'package:bookapp/Feature/Home/presentation/views/SplachView.dart';
import 'package:bookapp/Feature/Search/presentation/manger/Search_cubit/search_cubit.dart';
import 'package:bookapp/Feature/Search/presentation/views/Search_View.dart';
import 'package:bookapp/core/helper/Api/ApiService.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String Kbookdetails = '/Kbookdetail';
  static const String Ksearch = '/search';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Splachview(),
      ),
      GoRoute(
        path: '/homwView',
        builder: (context, state) => homeview(),
      ),
      GoRoute(
        path: AppRoutes.Kbookdetails,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchSimilarCubit(apiService: ApiService(Dio())),
          child: book_details_view(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.Ksearch,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(ApiService(Dio())),
          child: SearchView(),
        ),
      ),
    ],
  );
}
