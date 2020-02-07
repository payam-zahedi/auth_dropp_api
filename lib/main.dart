import 'package:auth_dropp_api/bloc/auth/bloc.dart';
import 'package:auth_dropp_api/bloc/localizations/bloc.dart';
import 'package:auth_dropp_api/pages/language.dart';
import 'package:auth_dropp_api/pages/login.dart';
import 'package:auth_dropp_api/resources/colors.dart';
import 'package:auth_dropp_api/utils/localization/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  BlocSupervisor.delegate = Delegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalizationsBloc>(
      create: (context) => LocalizationsBloc(),
      child: BlocBuilder<LocalizationsBloc, LocalizationsState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            locale: (state is PersianLocaleSelected) ? Locale('fa'):Locale('es'),
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
          );
        },
      ),
    );
  }
}

class Delegate extends BlocDelegate {
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print('error : $error & stack : $stacktrace');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('bloc : $bloc , transaction : $transition');
  }
}
