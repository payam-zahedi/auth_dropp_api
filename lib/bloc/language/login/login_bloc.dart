import 'dart:async';
import 'package:auth_dropp_api/api/drop.dart';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => InitialLoginState();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if(event is LoginPressed){
      Future.delayed(Duration(seconds: 10));
      yield Loading();
      Future.delayed(Duration(seconds: 10));
      var data = DropService.completeLogin(event.user, event.pass);
      if(data != null) {
        yield LoginSucceed();
      } else {
        yield LoginError();
      }
    }
  }
}
