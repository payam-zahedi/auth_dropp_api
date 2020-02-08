import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class InitialAuthState extends AuthState {
  @override
  String toString() {
    return super.toString();
  }
}

class Authenticated extends AuthState {
  @override
  String toString() {
    return super.toString();
  }
}

class UnAuthenticated extends AuthState {
  @override
  String toString() {
    return super.toString();
  }
}
