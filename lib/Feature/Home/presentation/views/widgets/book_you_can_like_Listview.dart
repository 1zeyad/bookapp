import 'package:bookapp/Feature/Home/presentation/views/widgets/book_image.dart';
import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';

class book_you_can_like_Listview extends StatelessWidget {
  const book_you_can_like_Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'You can also like',
            style: Style.textstyle16.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Book_image2(),
                );
              }),
        )
      ],
    );
  }
}
