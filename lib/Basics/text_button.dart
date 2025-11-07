import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TextButtonExample()));
}

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextButton Example")),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Action when button pressed
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("TextButton Pressed!")),
            );
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
