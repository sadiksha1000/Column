import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: SafeArea(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.teal,
          backgroundImage: NetworkImage(
              'https://foodganj.s3.ap-south-1.amazonaws.com/dish/071241614941569.jpg'),
        ),
      ),
    ));
  }
}
