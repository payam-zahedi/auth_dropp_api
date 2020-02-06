import 'package:auth_dropp_api/resources/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final TextEditingController verifyCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  PinCodeTextField(
                    controller: verifyCodeController,
                    animationDuration: Duration(milliseconds: 17),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: MyColors.textColor),
                    borderWidth: 1,
                    obsecureText: false,
                    textInputType: TextInputType.number,
                    length: 5,
                    shape: PinCodeFieldShape.underline,
                    disabledColor: Colors.grey,
                    activeColor: Colors.indigo[500],
                    inactiveColor: Colors.grey,
                    selectedColor: Colors.indigo[200],
                    onChanged: (String value) {},
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: SizedBox(
                      width: 110,
                      child: RaisedButton(
                        onPressed: () {},
                        color: MyColors.sendBtnColor,
                        child: Text(
                          'Send Code',
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
                    height: 9,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back to Register',
                        style: TextStyle(
                            color: MyColors.regTextSpanColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
    final textSpan = TextSpan(text: 'Verification Account', style: textStyle);
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
