import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LogIn extends AuthEvent {
  @override
  String toString() {
    return super.toString();
  }
}

class LogOut extends AuthEvent {
  @override
  String toString() {
    return super.toString();
  }
}
