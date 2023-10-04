import 'package:flutter/material.dart';
import 'dart:ui';
import 'main_drawer.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "route",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "C-Impressions",
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '\n\t\t\tWELCOME to C-Impressions',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                '\t\t\tThe change you make',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                '\n\n\nWhat is Carbon Footprint ?',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n\t\tCarbon footprints is the track of CO2 emissions which\t \thelp you to understand whether your actions are contributing to the well-being of environment or not.',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n\nWhy there is a need to calculate CO2 emission ?',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\nCarbon dioxide is one of the major Green house gases which led to hazardous environmental impacts like Depletion of ozone layer and this CO2 is emitted through our daily activites. ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
