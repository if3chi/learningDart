import 'package:flash_chat/components/rounded_btn.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'RegistrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  FirebaseAuth _auth = FirebaseAuth.instance;

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
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Enter your password',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            AppBtn(
              onTap: () async {
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email.trim(),
                    password: password.trim(),
                  );

                  if (newUser != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } on FirebaseException catch (e) {
                  // if(e.code == ){}
                  Alert(
                    context: context,
                    title: "",
                    desc: "${e.message}",
                    // image: Image.asset("assets/success.png"),
                  ).show();
                }
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
