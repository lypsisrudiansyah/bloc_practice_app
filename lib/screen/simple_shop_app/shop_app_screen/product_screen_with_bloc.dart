import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/bloc/shop_app/product/product_bloc.dart';

class ProductScreenWithBloc extends StatefulWidget {
  const ProductScreenWithBloc({super.key});

  @override
  State<ProductScreenWithBloc> createState() => _ProductScreenWithBlocState();
}

class _ProductScreenWithBlocState extends State<ProductScreenWithBloc> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<ProductBloc>().add(OnProductEventCalled());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Shop - BLOC"),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductLoaded) {
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
