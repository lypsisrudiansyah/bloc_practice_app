import 'package:flutter/material.dart';
import 'package:practice_bloc_app/theme.dart';

class ButtonVoidFunc extends StatelessWidget {
  const ButtonVoidFunc({
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