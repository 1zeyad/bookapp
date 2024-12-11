import 'package:bookapp/core/utlies/AssetData.dart';
import 'package:flutter/material.dart';

class Book_image extends StatelessWidget {
  const Book_image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        height: 120,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assetdata.imageitem))),
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
