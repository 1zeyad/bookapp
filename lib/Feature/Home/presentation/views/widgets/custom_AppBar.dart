import 'package:bookapp/core/utlies/App_routes.dart';
import 'package:bookapp/core/utlies/AssetData.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Assetdata.image,
            height: 20,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.Ksearch);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
