import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HeroMain()));
}

class HeroMain extends StatelessWidget {
  const HeroMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Main"),
        backgroundColor: Colors.lightGreen,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HeroDeatails()),
          );
        },
        child: Hero(
          tag: "ImageHero",
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.purpleAccent,
            ),
            width: 100,
            height: 100,
            child: Icon(Icons.widgets_outlined, size: 40, color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class HeroDeatails extends StatelessWidget {
  const HeroDeatails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Details"), backgroundColor: Colors.pink),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroMain()),
            );
          },
          child: Hero(
            tag: "ImageHero",
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.purpleAccent,
              ),
              width: 300,
              height: 300,
              child: Icon(Icons.widgets_outlined, size: 40, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
