import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_Rating_book extends StatelessWidget {
  const Custom_Rating_book({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 13,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: Style.textstyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '(259D)',
          style: Style.textstyle14,
        )
      ],
    );
  }
}
