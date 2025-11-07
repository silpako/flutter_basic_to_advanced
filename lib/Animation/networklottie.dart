import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lottie_network(),
  ));
}

class lottie_network extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            "https://lottie.host/dee3c867-4644-47ce-9169-707c0abf2d62/NZshMP4Un1.json"),
      ),
    );
  }
}
