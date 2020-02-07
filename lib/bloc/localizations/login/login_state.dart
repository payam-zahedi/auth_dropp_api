import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class InitialLoginState extends LoginState {
  @override
  String toString() {
    return super.toString();
  }
}

class LoginSucceed extends LoginState {
  @override
  String toString() {
    return super.toString();
  }
}

class LoginError extends LoginState {

  @override
  String toString() {
    return super.toString();
  }
}

class Loading extends LoginState {
  @override
  String toString() {
    return super.toString();
  }
}
