import 'package:flash_chat/components/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController myController;
  Animation colorAnimation;

  @override
  void initState() {
    super.initState();

    myController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      upperBound: 80,
    );

    colorAnimation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(myController);

    myController.forward();

    myController.addListener(
      () {
        setState(() {});
        // print(myController.value);
        // print(colorAnimation.value);
      },
    );
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorAnimation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: myController.value,
                  ),
                ),
                Flexible(
                  child: TextLiquidFill(
                    // speed: Duration(milliseconds: 500),
                    // totalRepeatCount: 1,
                    text: 'Flash Chat',
                    waveColor: Colors.blue,
                    boxBackgroundColor: Colors.white,
                    boxWidth: 320,
                    textStyle: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            AppBtn(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              btnColor: Colors.lightBlueAccent,
              btnTitle: 'Log In',
            ),
            AppBtn(
              onTap: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              btnColor: Colors.blueAccent,
              btnTitle: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
