import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login_Stateful(),
  ));
}

class Login_Stateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Login_StatefulState();
}

class Login_StatefulState extends State<Login_Stateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Username", border: OutlineInputBorder()),

              // here the value entered at textformfield will stored at uname
              validator: (uname) {
                if (uname!.isEmpty ||
                    !uname.contains("@") ||
                    !uname.contains(".com")) {
                  return "Username must not be empty or invalid";
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (password) {
                if (password!.isEmpty || password.length < 6) {
                  return " Password must no be empty / length must be <6";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}
