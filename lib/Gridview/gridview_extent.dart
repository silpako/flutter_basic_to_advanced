import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridExtentExample()));
}

class GridExtentExample extends StatelessWidget {
  final List<int> colors = List.generate(30, (i) => 100 + i * 10);

  GridExtentExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView.extent Example')),
      body: GridView.extent(
        maxCrossAxisExtent: 120, // Max width per item
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: colors.map((color) {
          return Container(
            color: Colors.teal[color % 900],
            child: Center(
              child: Text(
                'Color $color',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
