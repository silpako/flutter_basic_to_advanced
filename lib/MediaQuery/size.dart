import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Media(),
  ));
}

class Media extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Media Query"),
        ),
        body: Container(
          color: Colors.yellow,
          height: height * .6,
          width: width * .5,
        ));
  }
}
