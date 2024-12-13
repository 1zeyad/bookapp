import 'package:bookapp/Feature/Home/presentation/manager/Best_Seller/best_seller_cubit.dart';
import 'package:bookapp/Feature/Home/presentation/manager/GeneralBooks_cubit/fetch_general_books_cubit.dart';
import 'package:bookapp/Feature/Home/presentation/views/constant.dart';
import 'package:bookapp/core/helper/Api/ApiService.dart';
import 'package:bookapp/core/utlies/App_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>FetchGeneralBooksCubit(ApiService(Dio()))..featchGeneralBooks(),   // spread operator
        ),
        BlocProvider(
          create: (context) =>BestSellerCubit(ApiService(Dio())),
        ),
   
      ],
      
    
      child: MaterialApp.router(
          routerConfig: AppRoutes.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData().copyWith(
              scaffoldBackgroundColor: Kprimarycolor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        ),
    );
    
  }
}
