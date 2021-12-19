import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Button Example',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextButton(
                child: const Text('Text'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.lightGreen,
                  elevation: 20,
                  shadowColor: Colors.yellow,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(180, 80),
                  side: BorderSide(
                    color: Colors.white,
                    width: 2.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
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
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                child: const Icon(
                  Icons.wifi,
                ),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  backgroundColor: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.lightBlue,
                  textStyle: TextStyle(
                    fontSize: 25,
                  ),
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(80, 80),
                  side: BorderSide(
                    color: Colors.lightGreenAccent,
                    width: 2.55,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.people),
                label: const Text('Connect'),
              ),
            ],
          ),
        ));
  }
}
