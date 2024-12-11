import 'package:bookapp/Feature/Search/presentation/views/widgets/Custom_Text_form_search.dart';
import 'package:bookapp/Feature/Search/presentation/views/widgets/result_search_Listview.dart';

import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custom_Textform_Search(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Best seller',
                style: Style.textstyle18,
              ),
              SizedBox(
                height: 10,
              ),
              result_search_Listview()
            ],
          ),
        ))
      ],
    );
  }
}
