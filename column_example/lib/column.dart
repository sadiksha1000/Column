import 'package:flutter/material.dart';

class Columnexample extends StatelessWidget {
  const Columnexample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // verticalDirection: VerticalDirection.up,
            children: [
              // const SizedBox(height: 20),
              Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Container 1',
                    textScaleFactor: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'Container 2',
                    textScaleFactor: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Container 3',
                    textScaleFactor: 1.5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
