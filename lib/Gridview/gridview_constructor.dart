import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView_constructor(),
  ));
}

class GridView_constructor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: List.generate(
            15,
            (index) => Card(
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Icon(Icons.adb),
                )),
      ),
    );
  }
}
