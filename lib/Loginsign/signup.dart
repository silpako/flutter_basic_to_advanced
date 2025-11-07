import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign_up extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Color.fromARGB(255, 156, 180, 200),
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 4, 99, 177),
      title: Text("Sign In",style: GoogleFonts.robotoSerif(fontSize: 15),),),
      body: Center(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  helperText: "Enter your name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(6.0),
               child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone No",
                  labelText: "Phone No",
                  helperText: "Enter valid phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                         ),
             ),
             Padding(
               padding: const EdgeInsets.all(6.0),
               child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  helperText: "Enter Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                         ),
             ),
             Padding(
               padding: const EdgeInsets.all(6.0),
               child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  helperText: " Enter 6 characters",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                         ),
             ), 
             Padding(
               padding: const EdgeInsets.all(6.0),
               child: TextField(
                decoration: InputDecoration(
                  hintText: "Conform Password",
                  labelText: "Conform Password",
                  helperText: "Conform Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                         ),
             ),
            SizedBox(height: 40,),

            ElevatedButton(onPressed: (){}, 
            child: Text("Signin",style: GoogleFonts.robotoSerif(),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 4, 99, 177),),
            
            )

          
          ],
        ),
      )
   );
  }
  
}