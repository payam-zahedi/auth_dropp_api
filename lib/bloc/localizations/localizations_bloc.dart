import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class LocalizationsBloc extends Bloc<LocalizationsEvent, LocalizationsState> {
  @override
  LocalizationsState get initialState => InitialLocalizationsState();

  @override
  Stream<LocalizationsState> mapEventToState(
    LocalizationsEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
