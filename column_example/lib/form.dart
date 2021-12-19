import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  String result = '';

  String? _myvalidation(value) {
    if (value == null || value.isEmpty) {
      return "Field is empty";
    }
    // if (value.length < 8) {
    //   return "Less than 8 characters";
    // }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form')),
      body: Container(
        padding: EdgeInsets.all(10),
        height: 500,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Adding two numbers:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _firstController,
                validator: _myvalidation,
                decoration: InputDecoration(
                  labelText: 'First Number',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _firstController.clear();
                    },
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _secondController,
                validator: _myvalidation,
                decoration: InputDecoration(
                  labelText: 'Second Number',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _secondController.clear();
                    },
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      result = (int.parse(_firstController.text) +
                              int.parse(_secondController.text))
                          .toString();
                    });
                  }
                },
                child: const Text('Sum'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: const Text(
                        'Result',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        result,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
