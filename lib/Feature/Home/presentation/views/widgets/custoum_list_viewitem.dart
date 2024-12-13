// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:bookapp/core/utlies/AssetData.dart';

class Custom_ListView_item extends StatelessWidget {
  const Custom_ListView_item({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: CachedNetworkImage(
         fit: BoxFit.fill,
        imageUrl: imageUrl,
        placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
        errorWidget:(context, url, error) => const  Icon(Icons.error, color: Colors.white,),
      
      ),
    );
      

  }
}

// AspectRatio(
//       aspectRatio: 2.8 / 4,
//       child: Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(17),
//             color: Colors.red,
//             image: DecorationImage(
//                 fit: BoxFit.fill, image: NetworkImage(imageUrl))),
//       ),
//     );