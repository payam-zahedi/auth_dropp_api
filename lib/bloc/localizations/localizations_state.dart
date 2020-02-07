import 'package:equatable/equatable.dart';

abstract class LocalizationsState extends Equatable {
  const LocalizationsState();
}

class InitialLocalizationsState extends LocalizationsState {
  @override
  List<Object> get props => [];
}
