import 'package:bookapp/Feature/Home/presentation/views/Book_detail_view.dart';
import 'package:bookapp/Feature/Home/presentation/views/Homeview.dart';
import 'package:bookapp/Feature/Home/presentation/views/SplachView.dart';
import 'package:bookapp/Feature/Search/presentation/views/Search_View.dart';

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
        builder: (context, state) => book_details_view(),
      ),
      GoRoute(
        path: AppRoutes.Ksearch,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
