import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        clipBehavior: Clip.antiAlias,
        children: [
          Positioned(
            child: Container(
                width: 300,
                height: 200,
                color: Colors.teal,
                child: const Text('Container 1')),
          ),
          Positioned(
            right: 0,
            child: Container(
                width: 200,
                height: 100,
                color: Colors.lightBlue,
                child: const Text('Container 2')),
          ),
          Positioned(
            top: 0,
            child: Container(
                width: 100,
                height: 50,
                color: Colors.lime,
                child: const Text('Container 3')),
          ),
          const Positioned(
            width: 100,
            height: 100,
            bottom: 0,
            child: Image(
              image: NetworkImage(
                  'https://foodganj.s3.ap-south-1.amazonaws.com/dish/071241614941569.jpg'),
            ),
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://foodganj.s3.ap-south-1.amazonaws.com/dish/071241614941569.jpg'),
          ),
        ],
      ),
    ));
  }
}
