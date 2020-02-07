import 'package:equatable/equatable.dart';

abstract class LocalizationsState extends Equatable {
  const LocalizationsState();

  @override
  List<Object> get props => [];
}

class InitialLocalizationsState extends LocalizationsState {}

class PersianLocaleSelected extends LocalizationsState {}

class EnglishLocaleSelected extends LocalizationsState {}
