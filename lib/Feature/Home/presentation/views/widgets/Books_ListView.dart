import 'package:bookapp/Feature/Home/presentation/manager/GeneralBooks_cubit/fetch_general_books_cubit.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/custoum_list_viewitem.dart';
import 'package:bookapp/core/widgets/Custom_Loading.dart';
import 'package:bookapp/core/widgets/Cutom_messageError.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class booksListView extends StatelessWidget {
  const booksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchGeneralBooksCubit, FetchGeneralBooksState>(
      builder: (context, state) {
      if(state is SuccessFetchGeneralBooks){
      
       
          return SizedBox(
          height: MediaQuery.of(context).size.height * .27,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: state.List_books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Custom_ListView_item(
                    imageUrl:state.List_books[index].volumeInfo.imageLinks.thumbnail ,
                  ),
                );
              }),
        );
      }else if(state is FaluireFetchGeneralBooks){
        
        return Custom_messageErro(messageError: state.Erro_message,);
      }
      else{
        return CustomLoading();
      }
      },
    );
  }
}
