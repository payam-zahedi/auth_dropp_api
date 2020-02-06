import 'dart:async';
import 'package:auth_dropp_api/bloc/language/login/login_event.dart';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  @override
  AuthState get initialState => InitialAuthState();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
  }
}
