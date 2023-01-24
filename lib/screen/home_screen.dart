import 'package:flutter/material.dart';
import 'package:practice_bloc_app/screen/authentication_app_with_blocConsumer/login_screen_bc.dart';
import 'package:practice_bloc_app/screen/bloc_consumer_implementation/bloc_consumer_screen.dart';
import 'package:practice_bloc_app/screen/bloc_counter_app/counter_app_home.dart';
import 'package:practice_bloc_app/screen/bloc_listener_implementation/home_bloc_listener.dart';
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
                ButtonVoidFunc(
                  textButton: "BLOC Listener",
                  onPressedCustom: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeBlocListenerScreen()));
                  },
                ),
                ButtonVoidFunc(
                  textButton: "BLOC Consumer",
                  onPressedCustom: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BlocConsumerScreen()));
                  },
                ),
                ButtonVoidFunc(
                  textButton: "Auth App(BLOC Consumer)",
                  onPressedCustom: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LogiScreenBc()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
