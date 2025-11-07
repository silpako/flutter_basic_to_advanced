import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/Using%20Navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: Product_main(),
  ));
}

class Product_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        // product list le oro map one by one ayit product il kittum
        children: products
            .map((products) => ListTile(
                  // map iterable - one by one
                  leading: Container(
                    // same size with images use box decoration
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(products["image"]))),
                  ),
                  title: Text(products["name"]),
                  subtitle: Text(
                      "${products["price"]} \$"), // it is dynamic so use interpolation
                ))
            .toList(), // Varunna list ennath map annu - converted to list - childrean il kanikkanam
      ),
    );
  }
}
