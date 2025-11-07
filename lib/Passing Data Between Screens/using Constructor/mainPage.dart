import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/using%20Constructor/toStateful.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/using%20Constructor/toStateless.dart';

void main() {
  runApp(MaterialApp(
    home: Main_Page(),
  ));
}

class Main_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Passing Constructor"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => To_Stateless(
                        // optional named Parameter // data passed here
                        name: "Luminar",
                        location: "kakkanad",
                        phone: 8848930023))),
                // Stateless Page

                child: Text("to Stateless")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => To_Stateful(
                        name: "Luminar",
                        location: "kakkanad",
                        phone: 8848930023))), // Stateful Page
                child: Text("to Stateful"))
          ],
        ),
      ),
    );
  }
}
