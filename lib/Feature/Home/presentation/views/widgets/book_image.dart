// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:bookapp/core/utlies/AssetData.dart';

class Book_image extends StatelessWidget {
  const Book_image({
    Key? key,
    required this.image_url,
  }) : super(key: key);
  final String image_url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: CachedNetworkImage(
         fit: BoxFit.fill,
        imageUrl: image_url,
        placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
        errorWidget:(context, url, error) => const  Icon(Icons.error, color: Colors.white,),
      
      ),
    );
  }
}

class Book_image2 extends StatelessWidget {
  const Book_image2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        height: 130,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assetdata.imageitem))),
      ),
    );
  }
}
