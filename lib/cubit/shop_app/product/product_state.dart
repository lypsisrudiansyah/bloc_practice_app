part of 'product_cubit.dart';

@immutable
abstract class ProductState2 {}

class ProductInitial2 extends ProductState2 {}

class ProductLoading2 extends ProductState2 {}

class ProductLoaded2 extends ProductState2 {
  final List<Product> result;

  ProductLoaded2(this.result);
}
