import 'package:flutter/material.dart';

// ignore: must_be_immutable
class To_Stateful extends StatefulWidget {
  String name;
  String? location; // instance variable created
  int phone;
  To_Stateful({
    super.key,
    required this.name,
    required this.location,
    required this.phone,
  });
  @override
  State<StatefulWidget> createState() => _To_StatefulState();
}

class _To_StatefulState extends State<To_Stateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name:${widget.name}",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Location:${widget.location}",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Phone:${widget.phone}",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
