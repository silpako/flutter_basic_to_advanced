import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: AppBarFeatures()),
  );
}

class AppBarFeatures extends StatelessWidget {
  const AppBarFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        elevation: 10, // higher value = deeper shadow
        // shape
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: [Icon(Icons.search), Icon(Icons.notifications)],
        // gradient
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),

        toolbarHeight: 80, // height
      ),
    );
  }
}
