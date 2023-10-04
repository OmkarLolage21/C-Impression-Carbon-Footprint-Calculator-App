import 'dart:convert';

import 'package:c_impression/Result.dart';
import 'package:c_impression/dto/CarbonFootprintResult.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'HomeScreen.dart';

class CalculatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "route",
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => homepage()));
          }),
          backgroundColor: Colors.green,
          title: Text(
            "C-Impressions",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  TextEditingController DistanceController = TextEditingController();
  TextEditingController MODController = TextEditingController();
  TextEditingController walkController = TextEditingController();
  TextEditingController GarbageController = TextEditingController();
  TextEditingController ElectricityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: DistanceController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.water_drop_outlined),
                  hintText: 'How much petrol do you use daily ?',
                  labelText: 'Fuel',
                ),
              ),
              TextFormField(
                controller: walkController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.water_drop_outlined),
                  hintText: 'How much km do you walk daily ?',
                  labelText: 'Walk',
                ),
              ),
              TextFormField(
                controller: GarbageController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.wash_outlined),
                  hintText: 'How much garbage is generated daily?(kg)',
                  labelText: 'Garbage',
                ),
              ),
              TextFormField(
                controller: ElectricityController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.electric_bolt_sharp),
                  hintText: 'How much electricity consumed monthly?(units)',
                  labelText: 'Electricity',
                ),
              ),
              Text('\n'),
              ElevatedButton(
                onPressed: () async {
                  try {
                    Response response = await post(
                        headers: {"Content-Type": "application/json"},
                        Uri.parse('http://10.0.2.2:8080/calculate'),
                        body: jsonEncode({
                          'distance': DistanceController.text,
                          'walking': walkController.text,
                          'garbage': GarbageController.text,
                          'electricity': ElectricityController.text,
                        }));

                    if (response.statusCode == 200) {
                      final Map<String, dynamic> parsed =
                          json.decode(response.body);
                      CarbonFootprintResult carbonFootprintResult =
                          CarbonFootprintResult.fromJson(parsed);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => resultpage(
                              carbonFootprintResult: carbonFootprintResult,
                            ),
                          ));
                    } else {
                      Alert(
                              context: context,
                              title: "Incorrect",
                              desc: "Please enter the required data")
                          .show();
                    }
                  } catch (e) {
                    //print(e.toString());
                  }
                },
                child: Text('Calculate Footprints'),
              )
            ],
          )),
    );
  }
}
