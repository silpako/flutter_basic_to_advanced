import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ColumnWidget()));
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Vertical alignment
          crossAxisAlignment: CrossAxisAlignment.center, // Horizontal alignment
          children: [
            Container(height: 80, width: 80, color: Colors.red),
            Container(height: 90, width: 90, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
