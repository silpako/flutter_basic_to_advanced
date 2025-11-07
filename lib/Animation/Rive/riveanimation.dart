import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: rive_animation(),
  ));
}

class rive_animation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          //child:
          //RiveAnimation.asset(),
          // RiveAmimation.network(),
          ),
    );
  }
}
