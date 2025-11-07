import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HorizontalListView()));

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Horizontal ListView")),
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 120,
              color: Colors.red,
              child: Center(child: Text("1")),
            ),
            Container(
              width: 120,
              color: Colors.green,
              child: Center(child: Text("2")),
            ),
            Container(
              width: 120,
              color: Colors.blue,
              child: Center(child: Text("3")),
            ),
            Container(
              width: 120,
              color: Colors.orange,
              child: Center(child: Text("4")),
            ),
            Container(
              width: 120,
              color: Colors.pink,
              child: Center(child: Text("5")),
            ),
            Container(
              width: 120,
              color: Colors.deepPurpleAccent,
              child: Center(child: Text("6")),
            ),
            Container(
              width: 120,
              color: Colors.orange,
              child: Center(child: Text("7")),
            ),
          ],
        ),
      ),
    );
  }
}
