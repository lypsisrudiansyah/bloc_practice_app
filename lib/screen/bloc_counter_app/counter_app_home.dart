import 'package:flutter/material.dart';
import 'package:practice_bloc_app/screen/bloc_counter_app/counter_app_screens/counter_bloc_class_screen.dart';
import 'package:practice_bloc_app/screen/bloc_counter_app/counter_app_screens/counter_bloc_enum_screen.dart';
import 'package:practice_bloc_app/screen/bloc_counter_app/counter_app_screens/counter_cubit_screen.dart';
import 'package:practice_bloc_app/theme.dart';

class CounterAppHomeScren extends StatelessWidget {
  const CounterAppHomeScren({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bloc - Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterBlocClassScreen()),
                );
              },
              child: const Text("Bloc Event using ClassEvent"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterBlocEnumScreen()),
                );
              },
              child: const Text("Bloc Event using EnumEvent"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterCubitScreen()),
                );
              },
              child: const Text("Implement With Cubit"),
            ),
          ],
        ),
      ),
    );
  }
}