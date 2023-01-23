import 'package:flutter/material.dart';
import 'package:practice_bloc_app/screen/simple_shop_app/shop_app_screen/product_screen_with_bloc.dart';
import 'package:practice_bloc_app/screen/simple_shop_app/shop_app_screen/product_screen_with_cubit.dart';
import 'package:practice_bloc_app/shared/widget/button_void_func.dart';

class ShopAppHomeScreen extends StatelessWidget {
  const ShopAppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop App Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ButtonVoidFunc(
              textButton: "Product Screen(BLOC)",
              onPressedCustom: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductScreenWithBloc()),
              ),
            ),
            ButtonVoidFunc(
              textButton: "Product Screen(CUBIT)",
              onPressedCustom: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductScreenWithCubit()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
