import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyToast extends StatefulWidget {
  const MyToast({Key? key}) : super(key: key);

  @override
  _MyToastState createState() => _MyToastState();
}

class _MyToastState extends State<MyToast> {
  void showToast() {
    Fluttertoast.showToast(
      msg: "Let me make a toast",
      fontSize: 18,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Toast Example')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: showToast,
                  child: const Text('Show Toast'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                    elevation: 10,
                    shadowColor: Colors.lightBlue,
                    textStyle: TextStyle(
                      fontSize: 25,
                    ),
                    padding: EdgeInsets.all(10),
                    minimumSize: Size(80, 80),
                    side: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.55,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: cancelToast,
                  child: const Text('Cancel Toast'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                    elevation: 10,
                    shadowColor: Colors.lightBlue,
                    textStyle: TextStyle(
                      fontSize: 25,
                    ),
                    padding: EdgeInsets.all(10),
                    minimumSize: Size(80, 80),
                    side: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.55,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
