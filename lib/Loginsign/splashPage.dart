import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // to run an app
  // theme is material app
  runApp(MaterialApp(
    // default theme our flutter app
    debugShowCheckedModeBanner: false,
    home: SplashPage(), // initial page to be launched while running an app
  ));
}

class SplashPage extends StatelessWidget {
  @override
  // to create our widget tree we use build function.
  Widget build(BuildContext context) {
    // BuildContext - used to locate widgets on the widget tree and monitor.
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
            Colors.green,
            Colors.pink,
            Colors.blue
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
              // Image(
              //   image: AssetImage(
              //     "assets/icons/cold_ice.png",
              //   ),
              //   width: 100,
              //   height: 100,
              // ),

              // network image as image provider
              //================================
              // Image(
              //   image: NetworkImage(
              //       "https://cdn1.iconfinder.com/data/icons/flat-christmas-icons-1/75/_gift-512.png"),),
              Text(
                "Sweet Love",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900]),
              ),
            ],
          )),
        ));
  }
}
