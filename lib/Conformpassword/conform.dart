import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Conformpassword/login.dart';

class  Reg_Stateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Reg_StatefulState();

}

class  Reg_StatefulState extends State< Reg_Stateful> {
  final formkey=GlobalKey<FormState>();
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 184, 184),
        title: Center(child: Text("VALIDATION",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder()
                  ),
              ),
            ),
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
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder()
                  ),
                  validator: (num){
                    if(num!.isEmpty || num.length != 10)
                    {
                      return "Phone Number should have 10 digits/field must not empty";
                    }else{
                      return null;
                    }
      
                  },
                  ),
            ),
      
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
      
                validator:(password){
                  pass=password;
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
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
      
                validator:(cpassword){
                  if(cpassword!.isEmpty || cpassword!=pass){
                    return " Password must no be empty / length must be <6";
                  }
                  else{
                    return null;
                  }
                } ,
      
                decoration: InputDecoration(
                  hintText: "Conform Password",
                  border: OutlineInputBorder()
                ),
                
              ),
            ),
            ElevatedButton(onPressed: (){
              final valid= formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Data")));
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 32, 184, 184)), 
            child: Text(" Register"))
          ],
        ),
      ),
    );
  }
}