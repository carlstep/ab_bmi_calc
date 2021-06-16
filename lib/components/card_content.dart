import 'package:flutter/material.dart';
import '../constants.dart';


class CardContent extends StatelessWidget {
  const CardContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
