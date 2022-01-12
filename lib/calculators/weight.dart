import '../widgets/thedrawer.dart';

import 'package:flutter/material.dart';

class weightCalc extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<weightCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.6),
          title: Text(
            "Weight Converter",
            style: TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).pushNamed('/aboutUs'),
                icon: Icon(Icons.more_vert))
          ],
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
