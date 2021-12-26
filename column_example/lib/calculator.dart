import 'package:flutter/material.dart';

class MyCalculatorr extends StatefulWidget {
  const MyCalculatorr({Key? key}) : super(key: key);

  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculatorr> {
  final _formKey = GlobalKey<FormState>();
  String _principal = '';
  String _time = '';
  String _rate = '';
  String result = '';

  String? _myvalidation(value) {
    if (value == null || value.isEmpty) {
      return "Field is empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SI Calculator',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (value) {
                    _principal = value!;
                  },
                  keyboardType: TextInputType.number,
                  validator: _myvalidation,
                  decoration: InputDecoration(
                    labelText: 'Principal',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (value) {
                    _time = value!;
                  },
                  keyboardType: TextInputType.number,
                  validator: _myvalidation,
                  decoration: InputDecoration(
                    labelText: 'Time',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (value) {
                    _rate = value!;
                  },
                  keyboardType: TextInputType.number,
                  validator: _myvalidation,
                  decoration: InputDecoration(
                    labelText: 'Rate',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      setState(() {
                        result = ((int.parse(_principal) *
                                    int.parse(_time) *
                                    double.parse(_rate)) /
                                100)
                            .toString();
                      });
                    }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.reset();
                    setState(() {
                      result = '';
                    });
                  },
                  child: Text(
                    'Clear',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Result',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.black,
                        child: Text(
                          result,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
