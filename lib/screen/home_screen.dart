import 'package:flutter/material.dart';
import 'package:practice_bloc_app/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BLOC Practice APP"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  ButtonRadius(
                    textButton: "Bloc Counter App",
                    onPressedCustom: () {
                      // Navigator.push(context, route);
                    },
                  ),
                  ButtonRadius(
                    textButton: "Simple Shop App",
                    onPressedCustom: () {
                      // Navigator.push(context, route);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ButtonRadius extends StatelessWidget {
  const ButtonRadius({
    Key? key,
    required this.textButton,
    required this.onPressedCustom,
  }) : super(key: key);

  final String textButton;
  final VoidCallback onPressedCustom;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- RadiusXS
        ),
      ),
      onPressed: onPressedCustom,
      child: Text(textButton),
    );
  }
}
