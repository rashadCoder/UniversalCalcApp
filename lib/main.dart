import 'package:calc_app/calculators/standard.dart';
import 'package:calc_app/calculators/time.dart';
import 'package:calc_app/calculators/weight.dart';

import './calculators/prog.dart';
import './calculators/sci.dart';
import './widgets/thedrawer.dart';
import './widgets/calcButton.dart';
import './aboutus.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (ctx) => stdCalc(),
        '/sci': (ctx) => sciCalc(),
        '/prog': (ctx) => progCalc(),
        '/weight': (ctx) => weightCalc(),
        '/time': (ctx) => timeCalc(),
        '/aboutUs': (ctx) => aboutUs(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
