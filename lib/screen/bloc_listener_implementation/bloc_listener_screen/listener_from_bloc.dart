import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/bloc/data_dummy/data_dummy_bloc.dart';
import 'package:practice_bloc_app/screen/bloc_listener_implementation/bloc_listener_screen/listener_dummy_page.dart';
import 'package:practice_bloc_app/theme.dart';

class ListenerFromBlocScreen extends StatelessWidget {
  const ListenerFromBlocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC Listener(BLOC)"),
      ),
      body: BlocListener<DataDummyBloc, DataDummyState>(
        listener: (context, state) {
          if (state is DataDummyLoading) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("on load the data.")));
          }
          if (state is DataDummySuccess) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.resultText)));
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListenerDummyPage()),
            );
          }
        },
        child: BlocBuilder<DataDummyBloc, DataDummyState>(
          builder: (context, state) {
            if (state is DataDummyLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is DataDummySuccess) {
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
            ctx.read<DataDummyBloc>().add(OnDataEventCalled());
          },
          child: const Icon(Icons.refresh),
        );
      }),
    );
  }
}
