import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/bloc/counter_app/counter_withenumclass_bloc.dart';

// * Using cubit
class CounterCubitScreen extends StatelessWidget {
  const CounterCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Implement Bloc Using Event(Enum)'),
        ),
        body: Center(
          child: BlocProvider(
            create: (context) => CounterCubit(),
            child: BlocBuilder<CounterCubit, CounterState2>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${state.numberValue}",
                      style: const TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            context.read<CounterCubit>().increment();
                          },
                          child: const Text(
                            'Increment',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.read<CounterCubit>().increment();
                          },
                          child: const Text(
                            'Decrement',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
    );
  }
}