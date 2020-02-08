import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  @override
  AuthState get initialState => InitialAuthState();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is LogIn) {
      yield Authenticated();
    } else if (event is LogOut) {
      yield UnAuthenticated();
    }
  }
}
