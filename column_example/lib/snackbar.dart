import 'package:flutter/material.dart';

class SnackExample extends StatefulWidget {
  const SnackExample({Key? key}) : super(key: key);

  @override
  _SnackExampleState createState() => _SnackExampleState();
}

class _SnackExampleState extends State<SnackExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              duration: const Duration(seconds: 5),
              content: const Text('Snack example'),
              action: SnackBarAction(label: 'Undo', onPressed: () {}),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: const Text('Show Snackbar',
              style: TextStyle(
                fontSize: 20,
              )),
        ),
      )),
    );
  }
}
