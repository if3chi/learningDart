import 'package:flash_chat/components/rounded_btn.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
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
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Padding(
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
                obscuringCharacter: '#',
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
                  setState(() {
                    isLoading = true;
                  });
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

                    setState(() {
                      isLoading = false;
                    });

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
      ),
    );
  }
}
