import 'package:bmi_calculator/widgets/constants.dart';
import 'package:bmi_calculator/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String resultFig;
  final String resultDescription;
  final Color resultColor;

  ResultPage(
      {this.result, this.resultFig, this.resultDescription, this.resultColor});

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('BMI RESULT'),
          toolbarHeight: 90.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'YOUR RESULT',
                  style: kResultLabel,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${result.toUpperCase()}',
                      style: TextStyle(
                        color: resultColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                    Text(
                      '$resultFig',
                      style: kLabelIconResult,
                    ),
                    Text(
                      '$resultDescription',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            BottomBtn(
              onTouch: () {
                Navigator.pop(context);
              },
              label: 'RE-CALCULATE YOUR BMI',
            )
          ],
        ),
      );
}
