import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice_bloc_app/model/product_model.dart';
import 'package:practice_bloc_app/data/product_data.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState2> {
  ProductCubit() : super(ProductInitial2());

  void getProducts() async {
    emit(ProductLoading2());
    await Future.delayed(const Duration(milliseconds: 2500));
    emit(ProductLoaded2(productsData));
  }
}
