import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // sets the main theme for the primaryColor (header) and scaffoldBackgroundColor (body). using 'copyWith' sets the body text to default (white)
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/second': (context) => ResultsPage(),
      },
    );
  }
}
