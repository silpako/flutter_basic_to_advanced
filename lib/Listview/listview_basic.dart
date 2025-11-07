import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListviewBasic()));
}

class ListviewBasic extends StatelessWidget {
  const ListviewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Basic "),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          Text("Item 1"),
          Text("Item 2"),
          Text("Item 3"),
          Text("Item 4"),
        ],
      ),
    );
  }
}
