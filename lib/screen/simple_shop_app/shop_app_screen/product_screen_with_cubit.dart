import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/cubit/shop_app/product/product_cubit.dart';

class ProductScreenWithCubit extends StatefulWidget {
  const ProductScreenWithCubit({super.key});

  @override
  State<ProductScreenWithCubit> createState() => _ProductScreenWithCubitState();
}

class _ProductScreenWithCubitState extends State<ProductScreenWithCubit> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<ProductCubit>().getProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Shop - Cubit"),
      ),
      body: BlocBuilder<ProductCubit, ProductState2>(
        builder: (context, state) {
          if (state is ProductLoading2) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductLoaded2) {
            final products = state.result;

            return GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2,
              ),
              itemBuilder: ((context, index) {
                final product = products[index];
                return GridTile(
                  // footer: Text(product.title),
                  footer: GridTileBar(
                    backgroundColor: Colors.black38,
                    title: Text(
                      product.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              }),
            );
          }

          return const Center(
            child: Text("Data not Available"),
          );
        },
      ),
    );
  }
}
