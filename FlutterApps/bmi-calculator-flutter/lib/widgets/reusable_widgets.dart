import 'package:flutter/material.dart';
import 'constants.dart';

// My custom Widgets classess

// ReusableCard used for male & female cards
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

// CardContent used in ReusableCard
class CardContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  CardContent(
      {@required this.icon, @required this.label, @required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColor,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        )
      ],
    );
  }
}

// RoundBtn in for buttons
class RoundBtn extends StatelessWidget {
  final IconData icon;
  final Function onTouch;

  RoundBtn({this.icon, this.onTouch});

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTouch,
      fillColor: kGreyColorDark,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: kIconSize,
        height: kIconSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Icon(icon),
    );
  }
}

// Bottom Button
class BottomBtn extends StatelessWidget {
  final Function onTouch;
  final String label;
  const BottomBtn({this.onTouch, this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTouch,
      child: Container(
        alignment: Alignment.center,
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kPinkColor,
        margin: EdgeInsets.only(top: 15.0),
        child: Text(
          label,
          style: kBottomBtnLabel,
        ),
      ),
    );
  }
}
