import 'package:auth_dropp_api/model/data.dart';
import 'package:auth_dropp_api/resources/colors.dart';
import 'package:auth_dropp_api/utils/localization/app_localization.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  final DataModel dataModel;

  const ProfilePage({Key key,@required this.dataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(dataModel: dataModel,),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
        ],
        backgroundColor: MyColors.profileAppBar,
        title: Text(AppLocalizations.of(context).translate('profilePageTitle')),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(AppLocalizations.of(context).translate('tokenLabel')),
            SizedBox(
              height: 20,
            ),
            Text(dataModel.data.token)
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {

  final DataModel dataModel;

  const DrawerWidget({Key key,@required this.dataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Stack(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(dataModel.data.user.username),
              accountEmail: Text(dataModel.data.user.email),
              currentAccountPicture: CircleAvatar(
                child: Text('U'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
