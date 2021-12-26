import 'package:flutter/material.dart';
import './checkbox_widget.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({Key? key}) : super(key: key);

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  final _title = 'Checkbox Example';
  bool cycling = false;
  bool swimming = false;
  bool reading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Column(
          children: [
            CheckBoxWidget(title: 'Cycling', value: cycling),
            CheckBoxWidget(title: 'Swimming', value: swimming),
            CheckBoxWidget(title: 'Reading', value: reading),
          ],
        ));
  }
}
