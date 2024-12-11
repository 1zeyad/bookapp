import 'package:flutter/material.dart';

class Custom_Textform_Search extends StatelessWidget {
  const Custom_Textform_Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIconColor: Colors.white,
        hintText: 'Search',
        suffixIcon:
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),

        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
////////////////////////////////////////////////////////////////////////////
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
