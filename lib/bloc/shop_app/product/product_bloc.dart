import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice_bloc_app/model/product_model.dart';
import 'package:practice_bloc_app/data/product_data.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<OnProductEventCalled>((event, emit) async {
      emit(ProductLoading());
      await Future.delayed(const Duration(milliseconds: 2500));
      emit(ProductLoaded(productsData));
    });
  }
}
