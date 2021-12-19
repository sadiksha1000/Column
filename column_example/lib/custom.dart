import 'package:flutter/material.dart';

class CustomFontExample extends StatelessWidget {
  const CustomFontExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text(
          'Softwarica',
          textScaleFactor: 3,
          style: TextStyle(fontFamily: "Pacifico-Regular"),
        ),
      ),
    );
  }
}
