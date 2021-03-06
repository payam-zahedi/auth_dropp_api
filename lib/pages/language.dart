import 'package:auth_dropp_api/bloc/localizations/bloc.dart';
import 'package:auth_dropp_api/model/data.dart';
import 'package:auth_dropp_api/pages/login.dart';
import 'package:auth_dropp_api/utils/localization/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Select Your Language!',
            style: TextStyle(
                color: Colors.grey[700], fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  BlocProvider.of<LocalizationsBloc>(context)..add(PersianLocaleSelect());
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: FlagItem(
                  img: 'assets/images/iranFlag.png',
                  title: 'فارسی',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<LocalizationsBloc>(context)..add(EnglishLocaleSelect());
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: FlagItem(
                  img: 'assets/images/usaFlag.png',
                  title: 'English',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class FlagItem extends StatelessWidget {
  final String img;
  final String title;

  const FlagItem({Key key, @required this.img, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          img,
          width: 100,
          height: 100,
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          title,
          style:
              TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
