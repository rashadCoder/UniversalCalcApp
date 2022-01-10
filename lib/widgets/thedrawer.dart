import 'package:flutter/material.dart';

class thedrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.black.withOpacity(0.5),
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow[600],
                border: Border.all(color: Colors.black)),
            child: ListTile(
              leading: Icon(Icons.calculate, color: Colors.black),
              title: Text(
                "Standard calculator",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              minLeadingWidth: 0,
              onTap: () => Navigator.of(context).pushReplacementNamed('/'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow[600],
                border: Border.all(color: Colors.black)),
            child: ListTile(
              leading: Icon(Icons.science, color: Colors.black),
              title: Text(
                "Scientific calculator",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              subtitle: Text("coming soon"),
              minLeadingWidth: 0,
              onTap: () => Navigator.of(context).pushReplacementNamed('/sci'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow[600],
                border: Border.all(color: Colors.black)),
            child: ListTile(
              leading: Icon(Icons.code, color: Colors.black),
              title: Text(
                "Programming calculator",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              subtitle: Text("coming soon"),
              minLeadingWidth: 0,
              onTap: () => Navigator.of(context).pushReplacementNamed('/prog'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow[600],
                border: Border.all(color: Colors.black)),
            child: ListTile(
              leading: Icon(Icons.monitor_weight_outlined, color: Colors.black),
              title: Text(
                "Weight convertion",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              subtitle: Text("coming soon"),
              minLeadingWidth: 0,
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/weight'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow[600],
                border: Border.all(color: Colors.black)),
            child: ListTile(
              leading: Icon(Icons.shutter_speed_sharp, color: Colors.black),
              title: Text(
                "time convertion",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              subtitle: Text("coming soon"),
              minLeadingWidth: 0,
              onTap: () => Navigator.of(context).pushReplacementNamed('/time'),
            ),
          ),
        ],
      ),
    );
  }
}
