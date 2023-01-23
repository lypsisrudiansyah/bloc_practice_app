import 'package:flutter/material.dart';
import 'package:practice_bloc_app/screen/bloc_counter_app/counter_app_home.dart';
import 'package:practice_bloc_app/screen/simple_shop_app/shop_app_home.dart';
import 'package:practice_bloc_app/shared/widget/button_void_func.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BLOC Practice APP"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonVoidFunc(
                  textButton: "Bloc Counter App",
                  onPressedCustom: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CounterAppHomeScren()));
                  },
                ),
                ButtonVoidFunc(
                  textButton: "Simple Shop App",
                  onPressedCustom: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ShopAppHomeScreen()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
