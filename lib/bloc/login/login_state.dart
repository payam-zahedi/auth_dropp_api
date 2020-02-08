import 'package:auth_dropp_api/model/data.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

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

  final DataModel dataModel;

  LoginSucceed({@required this.dataModel});

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
