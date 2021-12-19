import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  const Homework({Key? key}) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  int? result;
  int first = 0;
  int second = 0;
  TextEditingController fcontroller = TextEditingController();
  TextEditingController scontroller = TextEditingController();
  bool validate1 = false;
  bool validate2 = false;

  @override
  void dispose() {
    fcontroller.dispose();
    scontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aja ko Kam'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              TextField(
                controller: fcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'First Number',
                  labelStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  hintText: 'Enter the first number',
                  hintStyle: const TextStyle(fontSize: 20),
                  border: const OutlineInputBorder(),
                  errorText: validate1 ? "Cannot be empty" : null,
                  errorStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: scontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Second Number',
                  labelStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  hintText: 'Enter the second number',
                  hintStyle: const TextStyle(fontSize: 20),
                  border: const OutlineInputBorder(),
                  errorText: validate2 ? "Cannot be empty" : null,
                  errorStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    first = int.parse(fcontroller.text);
                    second = int.parse(scontroller.text);
                    if (fcontroller.text.isNotEmpty &&
                        scontroller.text.isNotEmpty) {
                      result = first + second;
                    }
                    fcontroller.text.isEmpty
                        ? validate1 = true
                        : validate1 = false;
                    scontroller.text.isEmpty
                        ? validate2 = true
                        : validate2 = false;
                    print(validate1);
                    print(validate2);
                  });
                },
                child: const Text('Sum'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.lightBlue,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  padding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Result ' + ":" + " " + result.toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ));
  }
}
