import 'dart:convert';

import 'package:c_impression/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class signuppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Sign Up';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController dobController = TextEditingController();

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
                controller: nameController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.password_outlined),
                  hintText: 'Enter Password',
                  labelText: 'Password',
                ),
              ),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
              ),
              TextFormField(
                controller: cityController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.location_city_outlined),
                  hintText: 'Enter City',
                  labelText: 'City',
                ),
              ),
              TextFormField(
                controller: dobController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    Response response = await post(
                        headers: {"Content-Type": "application/json"},
                        Uri.parse('http://10.0.2.2:8080/saveUser'),
                        body: jsonEncode({
                          'name': nameController.text,
                          'mobile': phoneController.text,
                          'city': cityController.text,
                          'birthDate': dobController.text,
                          'password': passwordController.text
                        }));

                    if (response.statusCode == 200) {
                      /*Alert(
                                context: context,
                                title: "Login",
                                desc: "Login Successfully.")
                            .show();*/
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    } else {
                      Alert(
                              context: context,
                              title: "Failed Login",
                              desc: "Incorrect Email Or Password.")
                          .show();
                    }
                  } catch (e) {
                    //print(e.toString());
                  }
                },
                child: Text('Save'),
              )
            ],
          )),
    );
  }
}
