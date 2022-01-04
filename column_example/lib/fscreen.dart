import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import './secscreen.dart';
import './tscreen.dart';
import './person.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first-screen';
  final _formkey = GlobalKey<FormState>();
  String fname = '';
  String lname = '';

  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Interface',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (value) {
                    fname = value!;
                  },
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: '* Required',
                    ),
                    // EmailValidator(
                    //   errorText: 'Invalid Email',
                    // ),
                    MinLengthValidator(
                      6,
                      errorText: 'Should be more than 6 characters',
                    )
                  ]),
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    hintText: 'Enter your first name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onSaved: (value) {
                    lname = value!;
                  },
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: '* Required',
                    ),
                    // EmailValidator(
                    //   errorText: 'Invalid Email',
                    // ),
                    MinLengthValidator(
                      6,
                      errorText: 'Should be more than 6 characters',
                    )
                  ]),
                  decoration: InputDecoration(
                    labelText: 'Second Name',
                    hintText: 'Enter your last name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    child: const Text(
                      'Stateful',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        Person p = Person(fname: fname, lname: lname);
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => SecondScreen(person: p)));
                        Navigator.pushNamed(context, '/second-screen',
                            arguments: p);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    child: const Text(
                      'Stateless',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();

                        Navigator.pushNamed(context, '/third-screen');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
