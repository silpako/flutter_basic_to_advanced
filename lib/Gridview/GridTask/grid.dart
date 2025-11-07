import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: GridScreen(),
  ));
}

class GridScreen extends StatelessWidget {
  final List<FaIcon> icons = [
    FaIcon(FontAwesomeIcons.home),
    FaIcon(FontAwesomeIcons.bell),
    FaIcon(FontAwesomeIcons.camera),
    FaIcon(FontAwesomeIcons.star),
    FaIcon(FontAwesomeIcons.wifi),
    FaIcon(FontAwesomeIcons.file),
    FaIcon(FontAwesomeIcons.message),
    FaIcon(FontAwesomeIcons.phone),
    FaIcon(FontAwesomeIcons.simCard),
    FaIcon(FontAwesomeIcons.mailchimp),
  ];

  final List<Color> colors = [
    Colors.blue,
    Color.fromARGB(255, 214, 174, 44),
    Color.fromARGB(255, 58, 243, 33),
    Color.fromARGB(255, 243, 33, 128),
    Color.fromARGB(255, 243, 33, 33),
    Color.fromARGB(255, 61, 18, 219),
    Color.fromARGB(255, 190, 73, 228),
    Color.fromARGB(255, 26, 148, 120),
    Color.fromARGB(255, 219, 216, 35),
    Color.fromARGB(255, 225, 68, 68),
  ];

  final List<String> texts = [
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
    "Heart Shaker",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              color: colors[index],
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icons[index],
                    SizedBox(width: 10),
                    Text(
                      texts[index],
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
