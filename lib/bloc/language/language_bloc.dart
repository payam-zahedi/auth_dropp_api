import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  @override
  LanguageState get initialState => InitialLanguageState();

  @override
  Stream<LanguageState> mapEventToState(
    LanguageEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
