import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/Custom_Rating_book.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/book_image.dart';

import 'package:bookapp/core/utlies/App_routes.dart';

import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class BestSeller_item extends StatelessWidget {
  const BestSeller_item({super.key, required this.bookModel});
final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.Kbookdetails,extra : bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 15),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              Book_image(image_url: bookModel.volumeInfo.imageLinks.smallThumbnail,),
              const SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .50,
                    child:  Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      bookModel.volumeInfo.title!,
                      style: Style.textstyle18,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(bookModel.volumeInfo.authors![0]),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(r'19.99$',
                          style: Style.textstyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 50,
                      ),
                      Custom_Rating_book()
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
