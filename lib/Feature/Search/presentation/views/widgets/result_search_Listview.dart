import 'package:bookapp/Feature/Home/presentation/views/widgets/BestSellerItem.dart';
import 'package:flutter/material.dart';

class result_search_Listview extends StatelessWidget {
  const result_search_Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 100,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Text('data');
          // BestSeller_item(bookModel:,);
        });
  }
}
