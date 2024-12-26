import 'package:bookapp/Feature/Home/presentation/views/widgets/BestSellerItem.dart';
import 'package:bookapp/Feature/Search/presentation/manger/Search_cubit/search_cubit.dart';
import 'package:bookapp/core/widgets/Custom_Loading.dart';
import 'package:bookapp/core/widgets/Cutom_messageError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class result_search_Listview extends StatelessWidget {
  const result_search_Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state is SearchLoading) {
             CustomLoading();
        }
      },
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.List_books.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return search_item(bookModel: state.List_books[index]);
              });
        }
        else if (state is SearchFailure){
          return Custom_messageErro(messageError: state.error_message);
        }
        else{
          return Text('');
        }
      },
    );
  }
}
