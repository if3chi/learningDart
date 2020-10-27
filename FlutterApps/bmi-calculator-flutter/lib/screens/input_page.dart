import 'package:bmi_calculator/calculator_bmi.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/widgets/reusable_widgets.dart';
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
  int height = 176;
  int weight = 65;
  int age = 29;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        toolbarHeight: 90.0,
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
                    cardChild: CardContent(
                        icon: FontAwesomeIcons.mars,
                        iconColor: selectedGender == Gender.male
                            ? Colors.white
                            : kGreyColor,
                        label: 'MALE'),
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
                        iconColor: selectedGender == Gender.female
                            ? Colors.white
                            : kGreyColor,
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
                      Text('$height', style: kLabelIcon),
                      Text('cm', style: kLabelStyle)
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 40.0,
                    max: 200.0,
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
                Expanded(
                    child: ReusableCard(
                  cardColor: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT', style: kLabelStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text('$weight', style: kLabelIcon),
                          Text('kg', style: kLabelStyle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundBtn(
                            icon: FontAwesomeIcons.minus,
                            onTouch: () {
                              setState(() {
                                if (weight > 40) {
                                  --weight;
                                }
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundBtn(
                            icon: FontAwesomeIcons.plus,
                            onTouch: () {
                              setState(() {
                                if (weight < 256) {
                                  ++weight;
                                }
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: kLabelStyle),
                        Text('$age', style: kLabelIcon),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundBtn(
                              icon: FontAwesomeIcons.minus,
                              onTouch: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundBtn(
                                icon: FontAwesomeIcons.plus,
                                onTouch: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomBtn(
            onTouch: () {
              CalculateBMI calcBMI =
                  CalculateBMI(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    resultFig: calcBMI.calc(),
                    result: calcBMI.getResult(),
                    resultDescription: calcBMI.getDesc(),
                    resultColor: calcBMI.getColor(),
                  ),
                ),
              );
            },
            label: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
