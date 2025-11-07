import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_frameworks/Loginsign/loginPage.dart';
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
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
     return Scaffold(
        //backgroundColor: Colors.grey,
        body: Container(
          decoration: BoxDecoration(
            //color:Colors.black38,
          
            // image: DecorationImage(
            //     fit:BoxFit.cover,
            //   image: NetworkImage("https://images.unsplash.com/photo-1529778873920-4da4926a72c2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGNhdHxlbnwwfHwwfHx8MA%3D%3D")),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topLeft,
            
            colors: [
            Color.fromARGB(255, 47, 116, 172),
            Color.fromARGB(255, 95, 149, 193),
            Color.fromARGB(255, 68, 105, 136)
          ])
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // add built in icons
              // Icon(Icons.favorite,size: 50,color: Colors.red,),

              // adding external icons (flutter accessed it as image)

              // asset image as image provider
              //==============================
              Image(
                image: AssetImage(
                  "assets/icons/cold_ice.png",
                ),
                width: 200,
                height: 200,
              ),

              // network image as image provider
              //================================
              // Image(
              //   image: NetworkImage(
              //       "https://cdn1.iconfinder.com/data/icons/flat-christmas-icons-1/75/_gift-512.png"),),
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