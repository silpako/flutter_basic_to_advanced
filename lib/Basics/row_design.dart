import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: RowWideget()));
}

class RowWideget extends StatelessWidget {
  const RowWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row"), centerTitle: true),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            color: Colors.green,
            child: Center(child: Text("Box 1")),
          ),
          Container(
            height: 90,
            width: 90,
            color: Colors.red,
            child: Center(child: Text("Box 2")),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
            child: Center(child: Text("Box 3")),
          ),
        ],
      ),
    );
  }
}
