import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/Using%20Navigator/details.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/Using%20Navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: Product_list(),
    routes: {
      "details": (context) =>
          Product_Details(), // 1st route screen .. screens defined here
    },
  ));
}

class Product_list extends StatelessWidget {
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
          children: List.generate(
              products.length, // length of list
              (index) => InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed("details", arguments: products[index]["id"]),
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            // same size with images use box decoration
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        products[index]["image"]))),
                          ),
                          Text(products[index]["name"]),
                          Text("${products[index]["price"]} \$"),
                        ],
                      ),
                    ),
                  ))),
    );
  }
}
