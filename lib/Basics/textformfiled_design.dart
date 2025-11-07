import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TextFormFieldWidget()));
}

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter email",
                  border: OutlineInputBorder(),
                ),
                //validator: ,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter password",
                  border: OutlineInputBorder(),
                ),
                //validator: ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
