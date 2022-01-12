import './sci.dart';
import './prog.dart';
import './weight.dart';
import './time.dart';
import '../widgets/calcButton.dart';
import '../widgets/thedrawer.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class stdCalc extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<stdCalc> {
  late int n1;
  late int n2;
  var history = '';
  var textToDisplay = '';
  var res;
  var operation;

  void btnOnClick(String btnval) {
    print(btnval);
    if (btnval == 'C') {
      textToDisplay = '';
      n1 = 0;
      n2 = 0;
      res = '';
    } else if (btnval == 'AC') {
      textToDisplay = '';
      n1 = 0;
      n2 = 0;
      res = '';
      history = '';
    } else if (btnval == '+' ||
        btnval == '-' ||
        btnval == '/' ||
        btnval == 'X') {
      n1 = int.parse(textToDisplay);
      res = '';
      operation = btnval; //it will be either + - x /
    } else if (btnval == '<') {
      res = textToDisplay.substring(
          0,
          textToDisplay.length -
              1); //will remove last character (the substring will take all characters exept the last)
    }
    //to generate output
    //to make positive or negative number
    else if (btnval == '+/-') {
      if (textToDisplay[0] != '-') {
        //[0] means the first character of number ex for -1 is -
        res = '-' + textToDisplay; //add - if it doesn't have
      } else {
        res = textToDisplay.substring(
            1); //if it have - from beginning remove it once click on the button
      }
    } else if (btnval == '=') {
      n2 = int.parse(textToDisplay);
      if (operation == '+') {
        res = (n1 + n2).toString();
        history = n1.toString() + operation.toString() + n2.toString();
      }
      if (operation == '-') {
        res = (n1 - n2).toString();
        history = n1.toString() + operation.toString() + n2.toString();
      }
      if (operation == '/') {
        res = (n1 / n2).toString();
        history = n1.toString() + operation.toString() + n2.toString();
      }
      if (operation == 'X') {
        res = (n1 * n2).toString();
        history = n1.toString() + operation.toString() + n2.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnval).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.6),
          title: Text(
            "Standard Calculator",
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: TextStyle(
                      fontSize: 24, color: Colors.white.withOpacity(0.5)),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: "AC",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "C",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "<",
                  fillColor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "/",
                  fillColor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: "7",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "8",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "9",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "X",
                  fillColor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: "4",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "5",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "6",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "-",
                  fillColor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: "1",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "2",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "3",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "+",
                  fillColor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: "+/-",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "0",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "00",
                  fillColor: 0xFF8ac4d0,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
                CalcButton(
                  text: "=",
                  fillColor: 0xFFf4d160,
                  textcolor: 0xFF000000,
                  textsize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ));
  }
}
