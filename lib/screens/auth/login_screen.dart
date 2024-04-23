import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina_app/screens/auth/cubit/login_cubit.dart';
import 'package:promina_app/resources/Managers/colors_manager.dart';
import 'package:promina_app/resources/Managers/routes_manager.dart';
import 'package:promina_app/resources/Managers/values_manager.dart';
import 'package:promina_app/resources/Utils/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final LoginState state = context.read<LoginCubit>().state;
    final double width = Responsive.isMobile(context)
        ? MediaQuery.of(context).size.width * 0.8
        : MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/login_bg.jpeg"), fit: BoxFit.cover)),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "My",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  "Gallery",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Container(
                  height: 350,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.5),
                    border: Border.all(color: ColorManager.LightSilver),
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 15,
                        sigmaY: 15,
                      ), // A
                      child: Form(
                        key: key,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "LOG IN",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            SizedBox(
                              width: width * 0.8,
                              child: TextFormField(
                                style: Theme.of(context).textTheme.bodySmall,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Your User Name";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  errorText:
                                      state is LoginFailed ? state.msg : null,
                                  hintText: "User Name",
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorManager.White),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.8,
                              child: TextFormField(
                                obscureText: true,
                                style: Theme.of(context).textTheme.bodySmall,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Your Password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  errorText:
                                      state is LoginFailed ? state.msg : null,
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorManager.White),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (key.currentState!.validate()) {
                                      context.read<LoginCubit>().signIn();
                                      // Navigator.pushReplacementNamed(
                                      //     context, Routes.homeRoute);
                                    }
                                  },
                                  child: Container(
                                    width: width * 0.8,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: ColorManager.PrimaryColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Submit",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSize.s10,
                                ),
                                InkWell(
                                  onTap: () {
                                    context
                                        .read<LoginCubit>()
                                        .signIn(guest: true);
                                    // Navigator.pushReplacementNamed(
                                    //     context, Routes.homeRoute);
                                  },
                                  child: Container(
                                    width: width * 0.8,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: ColorManager.Pink,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Guest Login",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: ColorManager.White),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
