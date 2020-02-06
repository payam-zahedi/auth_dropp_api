import 'package:auth_dropp_api/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              HeaderWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Phone Number',
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
                            return 'Enter Your PhoneNumber';
                          } else {
                            return null;
                          }
                        },
                        controller: phoneNumberController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        cursorColor: MyColors.textFieldCursor,
                        minLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Username',
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        cursorColor: MyColors.textFieldCursor,
                        minLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Email',
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
                            return 'Enter Your Email';
                          } else {
                            return null;
                          }
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
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
                        'Already have an account?',
                        style:
                            TextStyle(color: MyColors.textColor, fontSize: 12),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              color: MyColors.regTextSpanColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
              child: Container(
                width: constraint.maxWidth,
                height: 200,
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
        size.width / 2, size.height + 100, size.width, size.height / 4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);

    final textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19);
    final textSpan = TextSpan(text: 'Create Account', style: textStyle);
    final textPainter =
        TextPainter(text: textSpan, textDirection: TextDirection.rtl);
    textPainter.layout(minWidth: 0, maxWidth: size.width);

    textPainter.paint(
      canvas,
      Offset((size.width / 2) - textPainter.size.width / 2,
          (size.height / 2) - textPainter.size.height / 2),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
