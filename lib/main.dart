import 'package:flutter/material.dart';
import 'package:practice_bloc_app/screen/home_screen.dart';
import 'package:practice_bloc_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Shop App',
      theme: ThemeData(
        primaryColor: primaryColorCustom,
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: primaryColorCustom),
      ),
      home: const HomeScreen(),
    );
  }
}
