import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton Example'),
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
              primary: Color.fromARGB(255, 223, 70, 121), // Background color
              onPrimary: Colors.white, // Text color
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Internal padding
              elevation: 8, // Elevation (shadow)
              shape: RoundedRectangleBorder( // Shape of the button
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(150, 50), // Minimum size
              side: BorderSide(color: Colors.black, width: 2), // Border color and width
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Custom text style
              animationDuration: Duration(milliseconds: 300), // Animation duration
            ),
          ),
        ),
      ),
    );
  }
}
