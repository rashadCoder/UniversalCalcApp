import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.6),
        title: Text(
          "About Us",
          style: TextStyle(color: Colors.yellow),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "About Universal CalcApp",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
                "This project is developed by Rashad Al-Hamhami, it is developed using Flutter and it's target is to cover all calculator and convertion types in a single applications. the project is open source so feel free to contribute till reaching the target.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify),
            SizedBox(
              height: 20,
            ),
            Text(
              "Contact the Developer",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () =>
                      launch("https://github.com/rashadCoder/UniversalCalcApp"),
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  onPressed: () => launch(
                      "https://www.linkedin.com/in/rashad-al-hamhami-a6942b1a2/"),
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 50,
                    color: Colors.blue[900],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  onPressed: () => launch(
                      "https://wa.me/96896785226?text=Hello,%20Rashad%20can%20I%20ask%20you%20about%20something?%20Thanks"),
                  icon: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 50,
                    color: Colors.green[600],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  onPressed: () =>
                      launch("https://www.instagram.com/rashad.988/"),
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 50,
                    color: Colors.pink[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
