import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 122,
            // height: double.infinity,
            color: Colors.red,
            child: const Text('Container 1'),
          ),
          Container(
              width: 123,
              // height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Container 2'),
                  Container(
                      width: 75,
                      height: 70,
                      color: Colors.green,
                      child: const Text('Container 4')),
                  Container(
                      width: 75,
                      height: 70,
                      color: Colors.yellow,
                      child: const Text('Container 5'))
                ],
              )),
          Container(
            width: 122,
            // height: double.infinity,
            color: Colors.blue,
            child: const Text('Container 3'),
          )
        ],
      ),
    ));
  }
}
