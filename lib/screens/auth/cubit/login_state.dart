part of "login_cubit.dart";

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailed extends LoginState {
  final String msg;

  LoginFailed({required this.msg});
}

class LoginLoading extends LoginState {}

class LoggedOut extends LoginState {}
