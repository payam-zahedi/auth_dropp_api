import 'dart:async';
import 'package:auth_dropp_api/api/drop.dart';
import 'package:auth_dropp_api/model/data.dart';
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
      yield Loading();
      await Future.delayed(Duration(seconds: 2));
      var data= DropService.completeLogin(event.user, event.pass);
      if(data == null) {
        yield LoginSucceed();
      } else {
        yield LoginError();
      }
    }
  }
}
