// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookapp/core/functions_helper/Uri_Lancher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/core/widgets/Custom_Button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            fontsize: 18,
            text: r'19.99$',
            Textcolor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          )),
          Expanded(
              child: CustomButton(
                onPressed: (){
                  uri_lancher(context,bookModel.volumeInfo.previewLink!);
                },
            fontsize: 13,
            text:getText(bookModel) ,
            Textcolor: Colors.white,
            backgroundColor: Colors.orange,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ))
        ],
      ),
    );
  }
}

String getText(BookModel bookModel){
if((bookModel.volumeInfo.previewLink == null)){
  return 'not conditional';
}
else{
  return 'Free preview';
}
}

