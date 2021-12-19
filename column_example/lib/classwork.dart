import 'package:flutter/material.dart';

class Classwork extends StatefulWidget {
  const Classwork({Key? key}) : super(key: key);

  @override
  _ClassworkState createState() => _ClassworkState();
}

class _ClassworkState extends State<Classwork> {
  String fname = '';
  String lname = '';
  String showName = '';
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  bool validate1 = false;
  bool validate2 = false;

  @override
  void dispose() {
    fnameController.dispose();
    lnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TextField Validation',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          setState(() {
            fname = '';
            lname = '';
            fname = fnameController.text;
            lname = lnameController.text;
            fname.isEmpty ? validate1 = true : validate1 = false;
            lname.isEmpty ? validate2 = true : validate2 = false;
            if (validate1 == false && validate2 == false) {
              showName = fname + " " + lname;
            } else {
              showName = '';
            }
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: fnameController,
              decoration: InputDecoration(
                labelText: 'FirstName',
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter your first name",
                border: OutlineInputBorder(),
                errorText: validate1 ? "Cannot be empty" : null,
                errorStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: lnameController,
              decoration: InputDecoration(
                labelText: 'LastName',
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter your last name",
                border: OutlineInputBorder(),
                errorText: validate2 ? "Cannot be empty" : null,
                errorStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              showName,
              style: const TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
