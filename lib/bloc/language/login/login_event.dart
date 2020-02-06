import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginPressed extends LoginEvent {
  final String user,pass;

  LoginPressed({@required this.user,@required this.pass});
  @override
  String toString() {
    return 'Event = LoginPressed';
  }
}