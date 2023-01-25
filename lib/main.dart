import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/bloc/data_dummy/data_dummy_bloc.dart';
import 'package:practice_bloc_app/bloc/shop_app/product/product_bloc.dart';
import 'package:practice_bloc_app/cubit/shop_app/product/product_cubit.dart';
import 'package:practice_bloc_app/screen/home_screen.dart';
import 'package:practice_bloc_app/theme.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductBloc()),
        BlocProvider(create: (context) => ProductCubit()),
        BlocProvider(create: (context) => DataDummyBloc()),
      ],
      child: MaterialApp(
        title: 'Simple Shop App',
        theme: ThemeData(
          primaryColor: primaryColorCustom,
          colorScheme: ColorScheme.fromSwatch().copyWith(primary: accentColor /* <- primarySwatch */),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
