import 'package:auth_dropp_api/pages/login.dart';
import 'package:auth_dropp_api/resources/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MyColors.appTheme,
      ),
      home: LoginPage(),
    );
  }
}
