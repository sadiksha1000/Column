import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 300,
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://foodganj.s3.ap-south-1.amazonaws.com/dish/071241614941569.jpg'),
                  ),
                ),
              ),
              const Text(
                'Sadiksha Chitrakar',
                textScaleFactor: 2.5,
                style: TextStyle(
                    fontFamily: 'Pacifico-Regular', color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text('Flutter Developer',
                  textScaleFactor: 1.5,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Card(
                // color: Colors.white,
                margin: const EdgeInsets.all(20),
                elevation: 25,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.phone, size: 30),
                      SizedBox(width: 20),
                      Text('977-9813565700',
                          textScaleFactor: 1.5,
                          style: TextStyle(color: Colors.green))
                    ],
                  ),
                ),
              ),
              Card(
                // color: Colors.white,
                margin: const EdgeInsets.all(20),
                elevation: 25,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(Icons.email, size: 30),
                      SizedBox(width: 20),
                      Text('sadiksha.chitrakar@gmail.com',
                          textScaleFactor: 1.5,
                          style: TextStyle(color: Colors.green))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
