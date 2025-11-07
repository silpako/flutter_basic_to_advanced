import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/Using%20Navigator/details.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/Using%20Navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: Product_main_Grid(),
    routes: {
      "details": (context) =>
          Product_Details(), // 1st route screen .. screens defined here
    },
  ));
}

class Product_main_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: products
            .map((product) => InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed("details", arguments: product["id"]),
                  child: Card(
                    // shape
                    child: Column(
                      children: [
                        Container(
                          // same size with images use box decoration
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(product["image"]))),
                        ),
                        Text(product["name"]),
                        Text("${product["price"]} \$"),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
