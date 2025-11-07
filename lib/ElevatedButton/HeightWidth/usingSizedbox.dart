import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: HeightWidth(),));
}

class HeightWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton Size Example'),
        ),
        body: Center(
          child: SizedBox(
           
            width: 300, // Set the width of the button
            height: 30, // Set the height of the button



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
              ),
            ),
          ),
        ),
    );
  }
}
