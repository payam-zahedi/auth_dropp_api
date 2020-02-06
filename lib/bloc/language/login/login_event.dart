import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends LoginEvent {}

class LoginPressed extends LoginEvent {
  @override
  String toString() {
    return 'Event = LoginPressed';
  }
}