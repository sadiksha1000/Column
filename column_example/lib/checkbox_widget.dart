import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  String title;
  bool value;

  CheckBoxWidget({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.title,
          textScaleFactor: 2,
        ),
        Checkbox(
          hoverColor: Colors.red,
          value: widget.value,
          onChanged: (bool? value) {
            print(widget.title);
            setState(() {
              print(value);
              widget.value = value!;
            });
          },
        )
      ],
    );
  }
}
