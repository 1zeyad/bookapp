import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.Textcolor,
    required this.backgroundColor,
    this.borderRadius,
    required this.text,
    required this.fontsize,
  });

  final String text;
  final Color Textcolor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12)),
            backgroundColor: backgroundColor),
        onPressed: () {},
        child: Text(text,
            style: Style.textstyle18.copyWith(
                fontWeight: FontWeight.bold,
                color: Textcolor,
                fontSize: fontsize)));
  }
}
