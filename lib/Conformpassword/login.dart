import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Conformpassword/conform.dart';
class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>LoginState();

}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 32, 184, 184),
          title: Center(child: Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder()
              ),

              // here the value entered at textformfield will stored at uname
              validator: (uname)
              {
                if(uname!.isEmpty || !uname.contains("@") ||  !uname.contains(".com")){
                  return "Username must not be empty or invalid";
                }
                else{
                  return null;
                }

              } ,
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(

              validator:(password){
                if(password!.isEmpty || password.length<6){
                  return " Password must no be empty / length must be <6";
                }
                else{
                  return null;
                }
              } ,

              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder()
              ),
              
            ),
          ),
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 32, 184, 184),), 
          child: Text("Login")),
          TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reg_Stateful()));
                }, 
                child: Text("Not a User? SignUp Here....",style: TextStyle(color: const Color.fromARGB(255, 10, 52, 86)),))
        ],
      ),
    );
  }
}