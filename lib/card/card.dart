import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CardWidget()));
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Card(
          elevation: 5, // shadow depth
          color: const Color.fromARGB(255, 3, 39, 68),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            height: 200,
            width: 100,
            child: Center(
              child: Text("Card", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
