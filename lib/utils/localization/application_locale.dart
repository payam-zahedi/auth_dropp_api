import 'dart:ui';

class ApplicationLocale {
  static final ApplicationLocale _applicationLocale =
      ApplicationLocale._internal();

  factory ApplicationLocale() {
    return _applicationLocale;
  }

  ApplicationLocale._internal();

  final List<String> supportedLanguage = [
    'English',
    'Persian',
  ];

  final List<String> supportedLanguageCodes = [
    'en',
    'fa',
  ];

  Iterable<Locale> supportedLocales() =>
      supportedLanguageCodes.map<Locale>((language) => Locale(language,''));

  LocaleChangeCallback onLocaleChange;
}

ApplicationLocale applicationLocale = ApplicationLocale();

typedef void LocaleChangeCallback(Locale locale);