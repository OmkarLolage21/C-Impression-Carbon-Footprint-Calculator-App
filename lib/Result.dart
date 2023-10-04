import 'package:c_impression/HomeScreen.dart';
import 'package:c_impression/dto/CarbonFootprintResult.dart';
import 'package:flutter/material.dart';

import 'improvement.dart';

class resultpage extends StatelessWidget {
  CarbonFootprintResult carbonFootprintResult;

  final _formKey = GlobalKey<FormState>();

  resultpage({Key? key, required this.carbonFootprintResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "C-Impressions",
        home: Scaffold(
            appBar: AppBar(
              leading: BackButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              }),
              backgroundColor: Colors.green,
              title: Text(
                "C-Impressions",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Your Carbon Footprints are :',
                          style: TextStyle(fontSize: 24),
                        ),
                        Text('\n\n\n'),
                        Text('\n'),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '\t\t\t\t\t\t\t1. Distance : ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            carbonFootprintResult.getDistanceByVehical(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('\n'),
                          Column(),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '\t\t\t\t\t\t\t2. Walking : ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            carbonFootprintResult.getWalking(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('\n'),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '\t\t\t\t\t\t\t3. Garbage : ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            carbonFootprintResult.getGarbage(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('\n'),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '\t\t\t\t\t\t\t4. Electricity : ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            carbonFootprintResult.getElectricity(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('\n'),
                        ]),
                    Text('\n\n'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '\t\t\t\t\ Final Result : ',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            carbonFootprintResult.getFinalResult(),
                            style: TextStyle(fontSize: 22),
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('\n\n\n\n'),
                        TextButton(
                          child: const Text(
                            'How Can I improve my footprint ?',
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => improvementpage()));
                            //signup screen
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Status of Footprint : ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\n\nIf Final footprint<6 : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\n\nGreen footprint',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\nIf Final footprint > 6 and < 14 : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '\nIntermediate Footprint ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[700]),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\nIf Final footprint > 14 : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\n Dark Footprint ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
