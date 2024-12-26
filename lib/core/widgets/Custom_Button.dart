// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookapp/core/utlies/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.Textcolor,
    required this.backgroundColor,
    this.borderRadius,
    required this.fontsize,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final Color Textcolor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double fontsize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12)),
            backgroundColor: backgroundColor),
        onPressed:onPressed,
        child: Text(text,
            style: Style.textstyle18.copyWith(
                fontWeight: FontWeight.bold,
                color: Textcolor,
                fontSize: fontsize)));
  }
}
