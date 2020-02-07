import 'package:auth_dropp_api/bloc/auth/bloc.dart';
import 'package:auth_dropp_api/bloc/localizations/bloc.dart';
import 'package:auth_dropp_api/pages/language.dart';
import 'package:auth_dropp_api/pages/login.dart';
import 'package:auth_dropp_api/resources/colors.dart';
import 'package:auth_dropp_api/utils/localization/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalizationsBloc>(
          create: (context) => LocalizationsBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: MyColors.appTheme,
        ),
        home: LanguagePage(),
        supportedLocales: [
          Locale('en', 'US'),
          Locale('fa', 'IR'),
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
      ),
    );
  }
}
