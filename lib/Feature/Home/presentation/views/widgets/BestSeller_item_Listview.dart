import 'package:bookapp/Feature/Home/presentation/manager/Best_Seller/best_seller_cubit.dart';
import 'package:bookapp/Feature/Home/presentation/views/widgets/BestSellerItem.dart';
import 'package:bookapp/core/widgets/Custom_Loading.dart';
import 'package:bookapp/core/widgets/Cutom_messageError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSeller_item_ListView extends StatelessWidget {
  const BestSeller_item_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
       if(state is Success_BestSellerBooks){
         return ListView.builder(
          itemCount :state.List_books.length,
           
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BestSeller_item( bookModel: state.List_books[index]);
            });
       }

       else if(state is FaluireFetch_BestSeller_Books){
        return Custom_messageErro(messageError: state.Erro_message);
       }
       else{
        return CustomLoading();
       }
      }
    );
  }
}
