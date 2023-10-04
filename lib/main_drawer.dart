import 'package:c_impression/HomeScreen.dart';
import 'package:c_impression/main.dart';
import 'package:flutter/material.dart';

import 'Calculate_Footprints.dart';
import 'View_formulae.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.green,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    'User',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_max_outlined),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text(
              'Calculate Footprints',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalculatePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate_outlined),
            title: Text(
              'View Formulae',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => formulapage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text(
              'Log out',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
        ],
      ),
    );
  }
}
