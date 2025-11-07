import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Loginsign/home.dart';
import 'package:flutter_frameworks/Loginsign/signup.dart';
import 'package:google_fonts/google_fonts.dart';
// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: LoginPage(),));
// }

// ignore: must_be_immutable
class LoginPage extends StatelessWidget{

  String username="admin@gmail.com";
  String password="abc123";

  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 156, 180, 200),
      appBar:AppBar(
        backgroundColor: Color.fromARGB(255, 4, 99, 177),
        title: Center(child: Text("Snow Ball",style: GoogleFonts.robotoSerif(fontSize: 15),)),),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset("assets/icons/cold_ice.png",height: 100,width: 100,),
                Text("SnowFalls rouses Your inner child To dream and play once more",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 10, 52, 86)),),
               
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    controller: uname_controller,
                    decoration: InputDecoration(
                      
                      hintText: "Username",
                      labelText: "Username",
                      helperText: "Username must be an Email ",
                      
                      //prefixIcon: Icon(Icons.account_circle) ,
                      suffixIcon: Icon(Icons.account_circle) ,
        
        
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      )
                    ),
                  ),
                ),
              
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    controller: pass_controller,

                    obscureText: true,
                    obscuringCharacter: "*",

                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      helperText: "Password must contain 6 characters ",
                      //prefixIcon: Icon(Icons.account_circle) ,
                      suffixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      )
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    if(username==uname_controller.text && password==pass_controller.text)
                    {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home(),));
                    }
                    else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Username or Password or the fields are empty"),
                        backgroundColor: Colors.red,));
                    }
                  }, 
                  child: Text("Login",style: TextStyle(fontSize: 15,),)),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sign_up()));
                }, 
                child: Text("Not a User? SignUp Here....",style: TextStyle(color: const Color.fromARGB(255, 10, 52, 86)),))
              ],
            ),
          ),
        ),
    );
  }
  
}