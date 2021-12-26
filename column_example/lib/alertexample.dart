import 'package:flutter/material.dart';

class AlertExample extends StatefulWidget {
  const AlertExample({Key? key}) : super(key: key);

  @override
  _AlertExampleState createState() => _AlertExampleState();
}

class _AlertExampleState extends State<AlertExample> {
  showAlertDialog(BuildContext context) {
    Widget okbtn = ElevatedButton(
      onPressed: () {},
      child: Text('OK'),
    );
    Widget cancelbtn = ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('CANCEL'),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      title: const Text('AlertDialog'),
      content: const Text('would you like to continue?'),
      actions: [
        okbtn,
        cancelbtn,
      ],
    );
    //show the Dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert Example'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: const Text('Show')),
        ));
  }
}
