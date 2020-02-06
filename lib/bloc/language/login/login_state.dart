import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class InitialLoginState extends LoginState {}

class LoginSucceed extends LoginState {}

class LoginError extends LoginState {}

class Loading extends LoginState {}
