import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),));
}

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/icons/gpay_icon.png"),width: 100,height: 300,),
            SizedBox(height:40),
             Text("Google",style: GoogleFonts.robotoSerif(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

}