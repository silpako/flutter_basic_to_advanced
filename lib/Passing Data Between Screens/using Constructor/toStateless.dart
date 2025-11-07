import 'package:flutter/material.dart';

// ignore: must_be_immutable
class To_Stateless extends StatelessWidget {
  String name;
  String? location; // instance variable created
  int phone;
  To_Stateless({
    // initial data changed
    super.key,
    required this.name, //constructor created
    required this.location,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name:$name",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Location:$location",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Phone:$phone",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
