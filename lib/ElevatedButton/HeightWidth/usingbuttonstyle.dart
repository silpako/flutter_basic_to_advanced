import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home:Button_style()));
}

class Button_style extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton Size Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Text(
              "Login",
              style: GoogleFonts.robotoSerif(),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Background color
              onPrimary: Colors.white, // Text color
              
              minimumSize: Size(200, 50), // Set the width and height

            ),
          ),
        ),
    );
  }
}
