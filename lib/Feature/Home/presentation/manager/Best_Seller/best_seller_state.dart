part of 'best_seller_cubit.dart';

sealed class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

final class BestSellerInitial extends BestSellerState {}




final class Success_BestSellerBooks extends BestSellerState {
  final List<BookModel> List_books ;

  Success_BestSellerBooks({required this.List_books});
}
final class Loading_BestSellerBooks extends BestSellerState {

}
final class FaluireFetch_BestSeller_Books extends BestSellerState {
final  String Erro_message ;

   FaluireFetch_BestSeller_Books({required this.Erro_message});
}

