import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Passing%20Data%20Between%20Screens/Using%20Navigator/dummydata.dart';

class Product_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var id =
        ModalRoute.of(context)?.settings.arguments; // id from previous page
    var product = products.firstWhere((product) => product["id"] == id);
    // products list le oro map um  product il varum.previous page il tap cheitha id
    // detail page le id k match aya product list il unodonn check cheyyum

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
              product["image"],
              height: 200,
              width: 200,
            ),
            Text(
              product["name"],
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "${product["price"]}",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "${product["rating"]}",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "${product["description"]}",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
