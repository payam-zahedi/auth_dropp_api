import 'package:equatable/equatable.dart';

abstract class LocalizationsEvent extends Equatable {
  const LocalizationsEvent();

  @override
  List<Object> get props => [];
}

class PersianLocaleSelect extends LocalizationsEvent {}

class EnglishLocaleSelect extends LocalizationsEvent {}
