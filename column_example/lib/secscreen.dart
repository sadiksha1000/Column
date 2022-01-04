import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import './person.dart';

// class SecondScreen extends StatefulWidget {
//   final Person person;
//   static const routeName = '/second-screen';
//   const SecondScreen({Key? key, required this.person}) : super(key: key);

//   @override
//   State<SecondScreen> createState() => _SecondScreenState();
// }

// class _SecondScreenState extends State<SecondScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Stateful',
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//         ),
//         body: Center(
//           child: Container(
//               child: Text(
//             '${widget.person.fname} ${widget.person.lname}',
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           )),
//         ));
//   }
// }

class SecondScreen extends StatefulWidget {
  static const routeName = '/second-screen';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final person = ModalRoute.of(context)!.settings.arguments as Person;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Stateful',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: Center(
          child: Container(
              child: Text(
            '${person.fname} ${person.lname}',
            style: TextStyle(
              fontSize: 20,
            ),
          )),
        ));
  }
}
