import 'package:flutter/material.dart';

const activeCardColor = Color(0xff1e1e33);
const bottomContainerHeight = 80.0;
const bottomCardColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  cardColor: activeCardColor,
                  cardChild:
                      CardContent(icon: Icons.ac_unit_rounded, text: 'MALE'),
                ),
                ReusableCard(
                  cardColor: activeCardColor,
                  cardChild: CardContent(
                    icon: Icons.access_alarm_sharp,
                    text: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(cardColor: activeCardColor),
          Expanded(
            child: Row(
              children: [
                ReusableCard(cardColor: activeCardColor),
                ReusableCard(cardColor: activeCardColor),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomCardColor,
            margin: EdgeInsets.only(top: 15.0),
          )
        ],
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final icon;
  final text;

  CardContent({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final cardChild;
  ReusableCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
