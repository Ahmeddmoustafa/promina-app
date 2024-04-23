import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina_app/screens/auth/cubit/login_cubit.dart';
import 'package:promina_app/screens/auth/login_screen.dart';
import 'package:promina_app/screens/home/home_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        // debugPrint("signed in ${cubit.signedIn}");
        if (state is LoginSuccess) {
          return const HomeScreen();
        }
        if (state is LoginLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return const LoginScreen();
      },
    );
  }
}
