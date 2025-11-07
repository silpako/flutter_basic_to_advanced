import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ElevatedButtonWidegt()));
}

class ElevatedButtonWidegt extends StatelessWidget {
  const ElevatedButtonWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Elevated button pressed")));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // background color
            foregroundColor: Colors.white, // text color
            elevation: 5, // shadow
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // rounded corners
            ),
          ),
          child: Text(
            "Login",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
