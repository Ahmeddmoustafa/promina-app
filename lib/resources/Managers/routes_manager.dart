// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:promina_app/main.dart';
import 'package:promina_app/screens/home/home_screen.dart';
import 'package:promina_app/screens/auth/login_screen.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        {
          return MaterialPageRoute(
            builder: (_) => SafeArea(child: LoginScreen()),
          );
        }
      case Routes.homeRoute:
        {
          return MaterialPageRoute(
            builder: (_) => SafeArea(
              child: HomeScreen(),
            ),
          );
        }
      // case Routes.authRoute:
      //   {
      //     return MaterialPageRoute(builder: (_) => SafeArea(child: AuthGate()));
      //   }

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("NOT FOUND"),
        ),
        body: Text("NOT FOUND"),
      ),
    );
  }
}
