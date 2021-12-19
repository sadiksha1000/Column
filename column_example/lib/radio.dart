import 'package:flutter/material.dart';

enum convertMode {
  Ropani,
  Aana,
  Paisa,
  Daam,
  Bigha,
  Kattha,
  Dhur,
  SquareFeet,
  SquareMeter,
  Acre
}

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  _MyRadioState createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  convertMode _value = convertMode.Ropani;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        width: 400,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              RadioListTile(
                value: convertMode.Ropani,
                title: Text('Ropani'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.Kattha,
                title: Text('Kattha'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.Aana,
                title: Text('Aana'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.Paisa,
                title: Text('Paisa'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.Daam,
                title: Text('Daam'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.Bigha,
                title: Text('Bigha'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.Dhur,
                title: Text('Dhur'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.Acre,
                title: Text('Acre'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
              RadioListTile(
                value: convertMode.SquareFeet,
                title: Text('Squarefeet'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  print(val);
                },
              ),
              RadioListTile(
                value: convertMode.SquareMeter,
                title: Text('SqaureMeter'),
                groupValue: _value,
                onChanged: (convertMode? val) {
                  print(val);
                },
              )
            ],
          ),
        ));
  }
}
