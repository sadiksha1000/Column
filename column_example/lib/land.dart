import 'package:flutter/material.dart';
import './radio.dart';

class Land extends StatelessWidget {
  const Land({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Land Converter'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Flexible(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelText: 'Ropani',
                      hintText: '0.00',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('From'),
                  ),
                  MyRadio()
                ],
              ),
            ),
            SizedBox(width: 20),
            Flexible(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelText: 'Ana',
                      hintText: '0.00',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('To'),
                  ),
                  MyRadio()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
