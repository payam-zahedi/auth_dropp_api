import 'package:auth_dropp_api/bloc/language/login/login_bloc.dart';
import 'package:auth_dropp_api/bloc/language/login/login_event.dart';
import 'package:auth_dropp_api/bloc/language/login/login_state.dart';
import 'package:auth_dropp_api/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                HeaderWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'User Name',
                        style: TextStyle(
                            fontSize: 13,
                            color: MyColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: MyColors.textFieldBkColor),
                        child: TextFormField(
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Enter Your Username';
                            } else {
                              return null;
                            }
                          },
                          controller: usernameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                          ),
                          cursorColor: MyColors.textFieldCursor,
                          minLines: 1,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 13,
                            color: MyColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.textFieldBkColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Enter Your Password';
                            } else {
                              return null;
                            }
                          },
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                          ),
                          cursorColor: MyColors.textFieldCursor,
                          minLines: 1,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: SizedBox(
                          width: 110,
                          child: BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              if (state is LoginError) {
                                print('Error');
                              } else if (state is LoginSucceed) {
                                print('nice');
                              }
                              return RaisedButton(
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();
                                    print('clicked Login');
                                    BlocProvider.of<LoginBloc>(context).add(
                                      LoginPressed(
                                          user: usernameController.text,
                                          pass: passwordController.text),
                                    );
                                  }
                                },
                                color: MyColors.loginBtnColor,
                                child: (state is Loading)
                                    ? SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 1.7,
                                        ),
                                      )
                                    : Text(
                                        'Log In',
                                        style: TextStyle(
                                            color: MyColors.btnTextColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 110,
                          child: RaisedButton(
                            onPressed: () {},
                            color: MyColors.regBtnColor,
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: MyColors.btnTextColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          'Forgotten password?',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: CurvePainter(),
        child: LayoutBuilder(
          builder: (context, constraint) {
            return Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/standing_man.png',
                width: constraint.maxWidth,
                height: 230,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    paint.color = MyColors.arkColor;
    paint.style = PaintingStyle.fill;

    path.moveTo(0, size.height / 4);
    path.quadraticBezierTo(
        size.width / 2, size.height + 50, size.width, size.height / 4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
