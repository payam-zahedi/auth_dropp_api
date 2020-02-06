import 'package:auth_dropp_api/model/data.dart';
import 'package:auth_dropp_api/resources/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
        ],
        backgroundColor: MyColors.profileAppBar,
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('token'),
            SizedBox(
              height: 20,
            ),
            Text('asdasd')
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Stack(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('asdasd'),
              accountEmail: Text('asasdasd'),
              currentAccountPicture: CircleAvatar(
                child: Text('M'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
