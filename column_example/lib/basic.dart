import 'package:column_example/myappbar.dart';
import 'package:flutter/material.dart';

class BasicExample extends StatefulWidget {
  const BasicExample({Key? key}) : super(key: key);

  @override
  State<BasicExample> createState() => _BasicExampleState();
}

class _BasicExampleState extends State<BasicExample> {
  List<String> country = ['Nepal', 'Pakistan', 'Korea', 'Japan', 'China'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: Text('LIST VIEW'),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ListTile(
                leading: Icon(Icons.settings),
                title: Text(country[0]),
                onTap: () {}),
            ListTile(leading: Icon(Icons.photo), title: Text(country[1])),
            ListTile(leading: Icon(Icons.phone), title: Text(country[2])),
            ListTile(leading: Icon(Icons.contacts), title: Text(country[3])),
            ListTile(leading: Icon(Icons.bathtub), title: Text(country[4])),
          ],
        ));
  }
}
