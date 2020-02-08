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
    if (event is LoginPressed) {
      try {
        yield Loading();
        DataModel data =
            await DropService.completeLogin(event.user, event.pass);
        if (data.status == 'ok') {
          yield LoginSucceed(dataModel: data);
        } else if (data.status == 'unauthorized') {
          yield LoginError();
        }
      } catch (e, s) {
        print('$e,$s');
      }
    }
  }
}
