import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.green,
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 200,
            left: 200,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
        ],
      )),
    );
  }
}
