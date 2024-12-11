import 'package:bookapp/core/utlies/AssetData.dart';
import 'package:flutter/material.dart';

class Custom_ListView_item extends StatelessWidget {
  const Custom_ListView_item({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assetdata.imageitem))),
      ),
    );
  }
}
