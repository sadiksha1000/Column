// import 'package:column_example/column.dart';
// import 'package:column_example/custom.dart';
// import 'package:column_example/task.dart';
import 'package:column_example/basic.dart';
import 'package:column_example/button.dart';
import 'package:column_example/calculate.dart';
import 'package:column_example/calculator.dart';
import 'package:column_example/fscreen.dart';
import 'package:column_example/gridview.dart';
import 'package:column_example/stateful.dart';
import 'package:flutter/material.dart';
import 'package:column_example/stack.dart';
// import 'package:column_example/image.dart';
// import 'package:column_example/assignment.dart';
import 'package:column_example/land.dart';
import 'package:column_example/classwork.dart';
import 'package:column_example/ajak.dart';
import 'package:column_example/form.dart';
import 'package:column_example/mytoast.dart';
import 'package:column_example/snackbar.dart';
import 'package:column_example/alertexample.dart';
import 'package:column_example/checkbox.dart';
import 'package:column_example/checkboxlisttile.dart';
import 'package:column_example/fscreen.dart';
import 'package:column_example/secscreen.dart';
import 'package:column_example/tscreen.dart';
import './basic.dart';
import './longlist.dart';
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
      // home: LongList(
      //   products: List.generate(200, (index) => 'product $index'),
      // ),
      home: MyGrid(),
      routes: {
        // '/': (context) => FirstScreen(),
        '/first-screen': (context) => FirstScreen(),
        '/second-screen': (context) => SecondScreen(),
        // '/third-screen': (context) => ThirdScreen(name: 'Hiii'),
      },
      // initialRoute: '/first-screen',
    );
  }
}
