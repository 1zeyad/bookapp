import 'package:bloc/bloc.dart';
import 'package:bookapp/Feature/Home/Data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit() : super(BestSellerInitial());
}
