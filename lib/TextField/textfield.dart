import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField Border Color Example'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 300, // Set the width of the TextField
              child: TextField(
                controller: TextEditingController(), // Manage the text being edited
                obscureText: true, // Hide text for password fields
                keyboardType: TextInputType.text, // Specify the type of keyboard
                style: TextStyle(fontSize: 18.0, color: Colors.black), // Style the text
                maxLength: 20, // Limit the number of characters
                cursorColor: Color.fromARGB(255, 25, 198, 86), // Change the color of the cursor
                focusNode: FocusNode(), // Manage focus
                decoration: InputDecoration(

                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  helperText: "Re-enter your password",

                  hintStyle: TextStyle(color: Colors.black), // Set the hint text color
                  labelStyle: TextStyle(color: Colors.grey), // Set the label text color
                  helperStyle: TextStyle(color: Colors.red), // Set the helper text color

                  errorText: null, // Set this to a string to show an error
                  prefixIcon: Icon(Icons.lock), // Add an icon at the start
                  suffixIcon: Icon(Icons.visibility), // Add an icon at the end
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.blue, // Set the border color
                      width: 2.0, // Set the border width
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.black, // Set the border color when enabled
                      width: 2.0, // Set the border width when enabled
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.green, // Set the border color when focused
                      width: 2.0, // Set the border width when focused
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
