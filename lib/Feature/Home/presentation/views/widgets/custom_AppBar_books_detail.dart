import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class custom_AppBar_books_detail extends StatelessWidget {
  const custom_AppBar_books_detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white))
      ],
    );
  }
}
