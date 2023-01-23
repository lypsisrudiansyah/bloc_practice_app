import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/bloc/shop_app/product/product_bloc.dart';
import 'package:practice_bloc_app/cubit/shop_app/product/product_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductBloc()),
        BlocProvider(create: (context) => ProductCubit()),
      ],
      child: MaterialApp(
        title: 'Simple Shop App',
        theme: ThemeData(
          primaryColor: primaryColorCustom,
          colorScheme: ColorScheme.fromSwatch().copyWith(primary: primaryColorCustom),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
