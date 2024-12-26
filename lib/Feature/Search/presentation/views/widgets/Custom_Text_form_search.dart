import 'package:bookapp/Feature/Search/presentation/manger/Search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Custom_Textform_Search extends StatelessWidget {
  const Custom_Textform_Search({super.key});

  @override
  Widget build(BuildContext context) {
   late String category;
    return TextField(
      onChanged: (data){
             category=data;
      },
      decoration: InputDecoration(
        suffixIconColor: Colors.white,
        hintText: 'Search',
        suffixIcon:
            IconButton(onPressed: (){
              BlocProvider.of<SearchCubit>(context).featchSearch_result(category);
            },icon: const Icon(Icons.search)),

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
