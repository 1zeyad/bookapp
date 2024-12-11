import 'package:bookapp/Feature/Home/presentation/views/widgets/BestSellerItem.dart';
import 'package:flutter/material.dart';

class BestSeller_item_ListView extends StatelessWidget {
  const BestSeller_item_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return BestSeller_item();
        });
  }
}
