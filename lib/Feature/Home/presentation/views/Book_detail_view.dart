import 'package:bookapp/Feature/Home/presentation/views/widgets/Action_Button.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/Custom_book_detail_Body.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/book_you_can_like_Listview.dart';

import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';

class book_details_view extends StatelessWidget {
  const book_details_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: SafeArea(
              child: Scaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Custom_book_detail_Body(),
                    SizedBox(
                      height: 25,
                    ),
                    ActionButton(),
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
