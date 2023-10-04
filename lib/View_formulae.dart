import 'package:flutter/material.dart';

import 'main_drawer.dart';

class formulapage extends StatelessWidget {
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
                '\n\n\nFuel footprint :',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n Amount of fuel used in litres*2.33(emission factor) ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n\n\nWalk footprint :',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n 0',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n\n\nGarbage footprint :',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n Amount of waste produced (kg) *0.63(emission factor)',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n\n\nElectricity footprint :',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n Amoun of electricity used(units)*0.82(emission factor)',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n\n\nFinal footprint :',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.indigo[300],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\n Fuel + electricity + garbage',
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
