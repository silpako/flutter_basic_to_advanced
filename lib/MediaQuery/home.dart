import 'package:flutter/material.dart';
import 'package:flutter_frameworks/MediaQuery/bigscreen.dart';
import 'package:flutter_frameworks/MediaQuery/mobile.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if (devicewidth < 600) {
      return MobileScreen();
    } else {
      return BigScreen();
    }
  }
}
