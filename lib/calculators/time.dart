import '../widgets/thedrawer.dart';

import 'package:flutter/material.dart';

class timeCalc extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<timeCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.6),
          title: Text(
            "Time Converter",
            style: TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
        ),
        drawer: thedrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text(
                  "Coming soon",
                  style: TextStyle(
                      fontSize: 24, color: Colors.white.withOpacity(0.5)),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
          ],
        ));
  }
}
