import 'package:equatable/equatable.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();
}

class InitialLanguageState extends LanguageState {
  @override
  List<Object> get props => [];
}
