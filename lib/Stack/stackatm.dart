import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MaterialApp(
    home: Stack_Atm(),
  ));
}

class Stack_Atm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
            ),
            Positioned(
              top: 80,
              left: 50,
              child: Row(
                children: [
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: FaIcon(
                      size: 40,
                      FontAwesomeIcons.simCard,
                      color: Color.fromARGB(255, 224, 220, 220),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: FaIcon(
                      size: 40,
                      FontAwesomeIcons.wifi,
                      color: Color.fromARGB(255, 224, 220, 220),
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              top: 190,
              left: 20,
              child: Text(
                "Silpa K O",
                style: GoogleFonts.aBeeZee(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // image visa

            Positioned(
              top: 150,
              right: 20,
              child: Image.asset(
                "assets/icons/visa_icon.png",
                width: 100,
                height: 100,
              ),
            ),

            //
            Positioned(
              top: 10,
              right: 20,
              child: GradientText("fi",
                  style: GoogleFonts.josefinSans(
                      fontSize: 45, fontWeight: FontWeight.bold),
                  colors: [Colors.black38, Colors.white, Colors.black26]),
            )
          ],
        ),
      ),
    );
  }
}
