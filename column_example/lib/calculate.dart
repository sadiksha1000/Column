import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  final _formKey = GlobalKey<FormState>();
  final _principalController = TextEditingController();
  final _timeController = TextEditingController();
  final _rateController = TextEditingController();

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
                  controller: _principalController,
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
                  controller: _timeController,
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
                  controller: _rateController,
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
                      setState(() {
                        result = ((int.parse(_principalController.text) *
                                    int.parse(_timeController.text) *
                                    double.parse(_rateController.text)) /
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
                    _principalController.clear();
                    _rateController.clear();
                    _timeController.clear();
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
