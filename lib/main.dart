import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina_app/screens/auth/cubit/login_cubit.dart';
import 'package:promina_app/resources/Theme/theme_data.dart';
import 'package:promina_app/screens/auth/auth_gate.dart';
import 'package:promina_app/screens/home/cubit/home_cubit.dart';

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
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'proMina',
        theme: getApplicationtheme(false),
        // initialRoute: Routes.loginRoute,
        // onGenerateRoute: RouteGenerator.getRoute,
        home: const SafeArea(child: AuthGate()),
      ),
    );
  }
}
