import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina_app/data/models/user_model.dart';
import 'package:promina_app/data/remote/auth_service.dart';

part "login_state.dart";

class LoginCubit extends Cubit<LoginState> {
  UserModel? user;
  final bool withAuth = false;
  final AuthRemoteSource authService = AuthRemoteSource();
  String error = "";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginCubit() : super(LoginInitial());

  Future<void> signIn({bool guest = false}) async {
    emit(LoginLoading());
    try {
      if (!guest) {
        final UserModel model = await authService.login(
          emailController.text,
          passwordController.text,
        );
        user = model;
      }
      emit(LoginSuccess());
    } catch (err) {
      error = err.toString();
      // print(error);
      emit(LoginFailed(msg: error.toString()));
    }
    return;
  }

  Future<void> logout() async {
    emit(LoggedOut());
  }

  // void initVariables() {
  //   email = emailController.text;
  //   password = passwordController.text;
  //   emailError = "";
  //   passwordError = "";
  // }

  // Future<void> logout() async {
  //   try {
  //     await authService.logout(); // result.fold((l) {
  //     //   isfailed = true;
  //     //   error = "Something Unexpected Happened";
  //     // }, (r) => null);
  //     emit(state.copyWith());
  //   } catch (err) {
  //     isfailed = true;
  //     error = "Something Unexpected Happened : $err";
  //     emit(state.copyWith());
  //   }
  // }

  // Future<void> isLoggedIn() async {
  //   emit(LoginLoading());
  //   loading = true;
  //   try {
  //     if (!signedIn) {
  //       final result = await authService.validateToken();
  //       // bool validated = result.fold((l) => false, (r) => true);
  //       signedIn = true;
  //       isfailed = true;
  //       loading = false;
  //       emit(LoginSuccess());
  //     }
  //   } catch (err) {
  //     signedIn = false;
  //     isfailed = true;
  //     loading = false;
  //     emit(LoggedOut());
  //   }
  // }
}
