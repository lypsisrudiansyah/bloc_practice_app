import 'package:flutter/material.dart';

class HomeScreenBc extends StatelessWidget {
  final String username;
  const HomeScreenBc({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
      ),
    );
  }
}
