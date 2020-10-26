import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onTouch;
  ReusableCard({@required this.cardColor, this.cardChild, this.onTouch});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTouch,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: cardChild,
      ),
    );
  }
}
