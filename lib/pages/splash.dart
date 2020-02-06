import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/dropp_logo.png',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Theme(
              child: CircularProgressIndicator(
                strokeWidth: 1.7,
              ),
              data: ThemeData(primarySwatch: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}