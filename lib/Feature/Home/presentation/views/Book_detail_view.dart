// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookapp/Feature/Home/presentation/manager/books_you_are_Like/fetch_similar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';

import 'package:bookapp/Feature/Home/presentation/views/widgets/Action_Button.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/Custom_book_detail_Body.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/book_you_can_like_Listview.dart';

class book_details_view extends StatefulWidget {
  const book_details_view({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
final BookModel bookModel;

  @override
  State<book_details_view> createState() => _book_details_viewState();
}

 

 

class _book_details_viewState extends State<book_details_view> {

  @override
  void initState() {
   BlocProvider.of<FetchSimilarCubit>(context).featchSimillarBooks(
    category:widget.bookModel.volumeInfo.categories![0]
     );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
          slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child: SafeArea(
                  child: Scaffold(
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Custom_book_detail_Body(
                          bookModel: widget.bookModel,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ActionButton(
                          bookModel:widget.bookModel,
                        ),
                        Expanded(
                            child: SizedBox(
                          height: 100,
                        )),
                        book_you_can_like_Listview(),
                      ],
                    ),
                  ),
                ))
          ],
        );
      
        
      
      }
  
  }

