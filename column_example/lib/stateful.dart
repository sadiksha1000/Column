import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  const MyStateful({Key? key}) : super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  String name = '';
  TextEditingController myController = TextEditingController();
  bool validate = false;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Example')),
      // floatingActionButton: Container(
      //   height: 900,
      //   child: Center(
      //     child: FloatingActionButton(
      //       child: const Icon(Icons.arrow_forward),
      //       onPressed: () {
      //         setState(() {
      //           name = myController.text;
      //         });
      //       },
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TextField(
                controller: myController,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  labelText: 'Country',
                  hintText: 'Enter your country name',
                  border: OutlineInputBorder(),
                  errorText: validate ? "Cannot be empty" : null,
                  errorStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              FloatingActionButton(
                child: const Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    name = myController.text;
                    // Validate
                    name.isEmpty ? validate = true : validate = false;
                  });
                },
              ),
              // TextField(
              //   onSubmitted: (value) {
              //     setState(() {
              //       name = value;
              //     });
              //     print('Your bestfriend\'s name is $name');
              //   },
              //   // maxLength: 8,
              //   // maxLines: null,
              //   // obscureText: true,
              //   // obscuringCharacter: '*',
              //   keyboardType: TextInputType.emailAddress,
              //   textCapitalization: TextCapitalization.characters,
              //   cursorColor: Colors.red,
              //   style: const TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              //   decoration: const InputDecoration(
              //     labelText: 'Name',
              //     labelStyle: TextStyle(fontSize: 20),
              //     hintText: 'Enter your name',
              //     hintStyle: TextStyle(fontSize: 17),
              //     icon: Icon(Icons.people, size: 25),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(20),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 30),
              Text(
                'Country Name is ${name}',
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
