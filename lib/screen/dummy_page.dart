import 'package:flutter/material.dart';

class ListenerDummyPage extends StatelessWidget {
  const ListenerDummyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
        actions: const [],
      ),
      body: Container(),
    );
  }
}
