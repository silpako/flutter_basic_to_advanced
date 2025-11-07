import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridExample()));
}

class GridExample extends StatelessWidget {
  const GridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Example"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10, // Space between columns
        mainAxisSpacing: 10, // Space between rows
        padding: EdgeInsets.all(10),
        children: List.generate(6, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.amber[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          );
        }),
      ),
    );
  }
}
