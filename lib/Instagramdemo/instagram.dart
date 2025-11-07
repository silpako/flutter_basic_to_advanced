import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Instagramdemo/instalogin.dart';
import 'package:google_fonts/google_fonts.dart';
 void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Insta_Splash(),));
 }
class Insta_Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>Insta_SplashState();
  
}

class Insta_SplashState extends State{
  void initState()
  { Timer(Duration(seconds: 4), () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Insta_Login()));
   });
    super.initState();
    }
  @override
  Widget build(BuildContext context ){
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/insta.jpg",width: 100,height: 100,),
          Text("Instagram",style: GoogleFonts.robotoSerif(fontSize: 20,color: Colors.black),)
        ],
      ),
      )
    );
  }
} 