import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc_app/bloc/auth_app_bc/auth_bc_bloc.dart';
import 'package:practice_bloc_app/screen/authentication_app_with_blocConsumer/home_screen_bc.dart';

class LoginScreenBc extends StatefulWidget {
  const LoginScreenBc({super.key});

  @override
  State<LoginScreenBc> createState() => _LoginScreenBcState();
}

class _LoginScreenBcState extends State<LoginScreenBc> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.clear();
    passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: userNameController,
                decoration: const InputDecoration(
                  label: Text('username'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('password'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              BlocConsumer<AuthBcBloc, AuthBcState>(
                listener: (context, state) {
                  if (state is AuthBcSucceed) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreenBc(username: state.username,),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is AuthBcLoading) {
                    return const CircularProgressIndicator();
                  }
                  return ElevatedButton(
                    onPressed: () {
                      context.read<AuthBcBloc>().add(OnAuthCalledEvent(username: userNameController.text, password: passwordController.text));
                    },
                    child: const Text('Sign In'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
