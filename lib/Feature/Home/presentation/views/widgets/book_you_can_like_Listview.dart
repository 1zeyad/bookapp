import 'package:bookapp/Feature/Home/presentation/manager/similar_Books/fetch_similar_cubit.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/book_image.dart';
import 'package:bookapp/core/utlies/AssetData.dart';
import 'package:bookapp/core/utlies/Styles.dart';
import 'package:bookapp/core/widgets/Custom_Loading.dart';
import 'package:bookapp/core/widgets/Cutom_messageError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class book_you_can_like_Listview extends StatelessWidget {
  const book_you_can_like_Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarCubit, FetchSimilarState>(
      builder: (context, state) {
        if (state is FetchSimilarSucess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'You can also like',
                  style:
                      Style.textstyle16.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                    itemCount: state.List_books.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Book_image(image_url:state.List_books[index].volumeInfo.imageLinks.smallThumbnail ?? Assetdata.image),
                      );
                    }),
              )
            ],
          );
        }
        else if(state is FetchSimilarFailure){
          return Custom_messageErro(messageError:state.messageError);
        }
        else{
         return  const  CustomLoading();
        }
      },
    );
  }
}
