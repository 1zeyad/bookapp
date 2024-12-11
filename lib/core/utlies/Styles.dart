import 'package:bookapp/Feature/Home/presentation/views/constant.dart';
import 'package:flutter/material.dart';

abstract class Style {
  static const textstyle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600 // => semi bold

          );

  static const TextStyle textstyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal, // => Regular
  );

  static const textstyle30 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.normal, // => Regular
      fontFamily: KgtSectraFine);

  static const textstyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal, // => Regular
  );

  static const textstyle16 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500, // => Medium.
  );
}
