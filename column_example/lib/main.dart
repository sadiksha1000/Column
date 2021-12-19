// import 'package:column_example/column.dart';
// import 'package:column_example/custom.dart';
// import 'package:column_example/task.dart';
import 'package:column_example/button.dart';
import 'package:column_example/stateful.dart';
import 'package:flutter/material.dart';
import 'package:column_example/stack.dart';
// import 'package:column_example/image.dart';
// import 'package:column_example/assignment.dart';
import 'package:column_example/land.dart';
import 'package:column_example/classwork.dart';
import 'package:column_example/ajak.dart';
import 'package:column_example/form.dart';

import 'myappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Example',
      home: MyForm(),
    );
  }
}
