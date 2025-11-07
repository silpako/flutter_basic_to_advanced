import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView_count(),
  ));
}

class GridView_count extends StatelessWidget {
  var img = [
    "assets/images/Apple.png",
    "assets/images/Banana.png",
    "assets/images/Blackberry.png",
    "assets/images/Blueberry.png",
    "assets/images/kiwi.png",
    "assets/images/Strawberry.png"
  ];
  var text = [
    "Apple",
    "Banana",
    "Blackberry",
    "Blueberry",
    "Kiwi",
    "Strawberry"
  ];
  var cash = [
    "120 \$",
    "100 \$",
    "150 \$",
    "220 \$",
    "250 \$",
    "180 \$",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(
              6,
              (index) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color:
                            Colors.primaries[index % Colors.primaries.length]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            img[index],
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            text[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(cash[index]),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
