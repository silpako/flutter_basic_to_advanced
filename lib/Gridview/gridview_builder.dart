import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview_builder(),
  ));
}

class Gridview_builder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Text("Silpa"),
            );
          }),
    );
  }
}
