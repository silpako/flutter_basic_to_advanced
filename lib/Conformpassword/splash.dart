import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_frameworks/Conformpassword/login.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splah2(), ));
}

class Splah2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Splah2State();
  
}
class Splah2State extends State{
  @override
  void initState() {
    Timer(Duration(seconds: 3), () { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
     return Scaffold(
        //backgroundColor: Colors.grey,
        body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topLeft,
            
            colors: [
            Color.fromARGB(255, 32, 139, 146),
            Color.fromARGB(255, 95, 183, 184),
            Color.fromARGB(255, 18, 146, 135)
          ])
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              Image(
                image: AssetImage(
                  "assets/icons/cold_ice.png",
                ),
                width: 200,
                height: 200,
              ),
              Text(
                "Snow",
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 40, 87)),
              ),
            ],
          )),
        ));
  }
}