import 'package:flutter/material.dart';

class CheckBoxListtile extends StatefulWidget {
  const CheckBoxListtile({Key? key}) : super(key: key);

  @override
  _CheckBoxListtileState createState() => _CheckBoxListtileState();
}

class _CheckBoxListtileState extends State<CheckBoxListtile> {
  bool _firstvalue = false;
  bool _secondvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Check Box List Tile', style: TextStyle(fontSize: 20)),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                const Text('Checkbox with header and subtitles',
                    style: TextStyle(fontSize: 20)),
                CheckboxListTile(
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 4:30 AM everyday'),
                  subtitle: const Text('Ringing after 1 hour'),
                  value: _firstvalue,
                  onChanged: (bool? value) {
                    setState(() {
                      _firstvalue = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 5:30 AM everyday'),
                  subtitle: const Text('Ringing after 1 hour'),
                  value: _secondvalue,
                  onChanged: (bool? value) {
                    setState(() {
                      _secondvalue = value!;
                    });
                  },
                )
              ],
            ),
          ),
        ));
  }
}
