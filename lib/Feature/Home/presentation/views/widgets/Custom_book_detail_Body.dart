import 'package:bookapp/Feature/Home/presentation/views/widgets/Custom_Rating_book.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/custom_AppBar_books_detail.dart';

import 'package:bookapp/core/utlies/AssetData.dart';
import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';

class Custom_book_detail_Body extends StatelessWidget {
  const Custom_book_detail_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          custom_AppBar_books_detail(),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .35,
            child: AspectRatio(
              aspectRatio: 2.5 / 3.8,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(Assetdata.imageitem))),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('The Jungle Book',
              style: Style.textstyle30.copyWith(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text('Rudyard Kipling',
              style: Style.textstyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 10,
          ),
          Custom_Rating_book()
        ],
      ),
    );
  }
}
