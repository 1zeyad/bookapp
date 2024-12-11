import 'package:bookapp/core/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            fontsize: 18,
            text: r'19.99$',
            Textcolor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          )),
          Expanded(
              child: CustomButton(
            fontsize: 13,
            text: 'Free preview',
            Textcolor: Colors.white,
            backgroundColor: Colors.orange,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ))
        ],
      ),
    );
  }
}
