import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

enum GenderStatus {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColour(GenderStatus activeGender) {
    // male card pressed
    if (activeGender == GenderStatus.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    // female card pressed
    if (activeGender == GenderStatus.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                Expanded(
                  // MALE card
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(GenderStatus.male);
                      });
                    },
                    child: ReusableCard(
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      colour: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  // FEMALE card
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(GenderStatus.female);
                      });
                    },
                    child: ReusableCard(
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      colour: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
