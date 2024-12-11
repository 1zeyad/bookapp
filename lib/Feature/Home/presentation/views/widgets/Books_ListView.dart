import 'package:bookapp/Feature/Home/presentation/views/widgets/custoum_list_viewitem.dart';

import 'package:flutter/material.dart';

class booksListView extends StatelessWidget {
  const booksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Custom_ListView_item(),
            );
          }),
    );
  }
}
