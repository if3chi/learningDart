import 'package:bmi_calculator/widgets/card_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTouch: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild:
                        CardContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardColor: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '$height',
                        style: kLabelIcon,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 40.0,
                    max: 200.0,
                    activeColor: kBottomCardColor,
                    inactiveColor: kGreyColor,
                    onChanged: (double heightChanged) {
                      setState(() {
                        height = heightChanged.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(cardColor: kActiveCardColor)),
                Expanded(child: ReusableCard(cardColor: kActiveCardColor)),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            width: double.infinity,
            color: kBottomCardColor,
            margin: EdgeInsets.only(top: 15.0),
          )
        ],
      ),
    );
  }
}
