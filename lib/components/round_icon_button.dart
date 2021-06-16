import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Icon(icon),
      style: TextButton.styleFrom(
        minimumSize: Size.fromRadius(30.0),
        backgroundColor: Color(0xFF4C4F5E),
        shape: CircleBorder(),
        primary: Colors.white,
        elevation: 0.0,
      ),
      onPressed: onPressed,
    );
  }
}
