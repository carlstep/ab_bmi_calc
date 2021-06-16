import '../constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(26.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultsPageLargeTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kLabelResultOutputHeader,
                    ),
                    Text(
                      '00.0',
                      style: kResultPageNumber,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'a statement about the current weight and advice of what to do.',
                        style: kResultStatementText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ));
  }
}
