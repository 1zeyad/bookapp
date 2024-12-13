// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Custom_messageErro extends StatelessWidget {
  const Custom_messageErro({
    Key? key,
    required this.messageError,
  }) : super(key: key);
  final String messageError ;
  @override
  Widget build(BuildContext context) {
    return Center(
     child:  Text('$messageError')
    );
  }
}
