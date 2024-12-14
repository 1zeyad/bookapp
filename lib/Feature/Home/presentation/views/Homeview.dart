import 'package:bookapp/Feature/Home/presentation/views/widgets/BestSeller_item_Listview.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/Books_ListView.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/custom_AppBar.dart';
import 'package:bookapp/core/utlies/Styles.dart';
import 'package:flutter/material.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customAppBar(),
              SizedBox(height: 8),
              
              booksListView(),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Best seller',
                  style: Style.textstyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(child: BestSeller_item_ListView())
      ],
    ));
  }
}

//  SliverFillRemaining(
//           child:   BestSeller_item_ListView()
//         )
