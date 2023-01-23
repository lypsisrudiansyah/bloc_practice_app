import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/cubit/shop_app/data_dummy/data_dummy_cubit.dart';
import 'package:practice_bloc_app/cubit/shop_app/data_dummy/time_called_cubit.dart';
import 'package:practice_bloc_app/theme.dart';

class BlocConsumerScreen extends StatelessWidget {
  const BlocConsumerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DataDummyCubit()),
        BlocProvider(create: (context) => TimeCalledCubit()),
      ],
      child: const ChildBlocConsumerScreen(),
    );
  }
}

class ChildBlocConsumerScreen extends StatelessWidget {
  const ChildBlocConsumerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final state = BlocProvider.of<TimeCalledCubit>(context, listen: true).state; //* same as context.watch<BlocA>();
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<TimeCalledCubit, TimeCalledState>(
          builder: (context, state) {
            /* if (state is TimeCalledLoading) {
              // return const Center(child: CircularProgressIndicator());
            } */
            if (state is TimeCalledTrigerred) {
              return Text("Called ${state.intValue} x");
            }
            return const Text("Called 0 x");
            
          },
        ),
      ),
      body: BlocConsumer<DataDummyCubit, DataDummyState2>(
        listener: (context, state) {
          // * Implementation Listener
          if (state is DataDummyLoading2) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("loading...")));
          }
          if (state is DataDummySuccess2) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.resultText)));
            // * Calling method on another cubit/bloc
            context.read<TimeCalledCubit>().callTheData();
          }
        },
        builder: (context, state) {
          if (state is DataDummyLoading2) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is DataDummySuccess2) {
            return Center(
              child: Text(state.resultText),
            );
          }

          return const Center(
            child: Text("Data initial"),
          );
        },
      ),
      floatingActionButton: Builder(builder: (ctx) {
        return FloatingActionButton(
          backgroundColor: accentColor,
          onPressed: () {
            ctx.read<DataDummyCubit>().getDataDummy();
          },
          child: const Icon(Icons.refresh),
        );
      }),
    );
  }
}
