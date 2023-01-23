import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/cubit/shop_app/data_dummy/data_dummy_cubit.dart';
import 'package:practice_bloc_app/screen/dummy_page.dart';
import 'package:practice_bloc_app/theme.dart';

class ListenerFromCubitScreen extends StatelessWidget {
  const ListenerFromCubitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataDummyCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("BLOC Listener(CUBIT)"),
        ),
        body: BlocListener<DataDummyCubit, DataDummyState2>(
          listener: (context, state) {
            if (state is DataDummyLoading2) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("on load the data.")));
            }
            if (state is DataDummySuccess2) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.resultText)));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListenerDummyPage()),
              );
            }
          },
          child: BlocBuilder<DataDummyCubit, DataDummyState2>(
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
      ),
    );
  }
}
