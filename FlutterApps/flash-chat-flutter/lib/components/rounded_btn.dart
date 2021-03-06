import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  final Function onTap;
  final String btnTitle;
  final Color btnColor;

  AppBtn({this.onTap, this.btnColor, this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: btnColor,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnTitle,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
