import 'package:flash_chat/components/rounded_btn.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  String email;
  String passwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Enter your email',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                passwd = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Enter your password.',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            AppBtn(
              onTap: () async {
                try {
                  final loggedIn = await _auth.signInWithEmailAndPassword(
                    email: email.trim(),
                    password: passwd.trim(),
                  );

                  if (loggedIn != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } on FirebaseException catch (e) {
                  print(e.code);
                  if (e.code == 'wrong-password') {
                    Alert(
                            context: context,
                            title: 'Wrong Password',
                            desc: 'Please! Enter a valid password.')
                        .show();
                  }
                  if (e.code == 'too-many-requests') {
                    Alert(
                            context: context,
                            title: 'Too Many Requests',
                            desc: '${e.message}')
                        .show();
                  }
                }
              },
              btnTitle: 'Log In',
              btnColor: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
