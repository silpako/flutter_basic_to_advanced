import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView_constructor_maxaxis(),
  ));
}

class GridView_constructor_maxaxis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
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
