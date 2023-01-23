import 'package:flutter/material.dart';
import 'package:practice_bloc_app/screen/bloc_listener_implementation/bloc_listener_screen/listener_from_bloc.dart';
import 'package:practice_bloc_app/screen/simple_shop_app/shop_app_screen/product_screen_with_cubit.dart';
import 'package:practice_bloc_app/shared/widget/button_void_func.dart';

class HomeBlocListenerScreen extends StatelessWidget {
  const HomeBlocListenerScreen({Key? key}) : super(key: key);

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
              textButton: "BLOC Listener (BLOC)",
              onPressedCustom: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListenerFromBlocScreen()),
              ),
            ),
            ButtonVoidFunc(
              textButton: "BLOC Listener (CUBIT)",
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
