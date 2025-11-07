import 'package:flutter/material.dart';

class custom_card extends StatelessWidget {
  NetworkImage? image;
  String? text;
  VoidCallback? click;
  VoidCallback? click1;

  // create constructor
  custom_card(
      {required this.image,
      required this.text,
      required this.click,
      required this.click1});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(children: [
            Image(image: image!),
            // icon love
            Positioned(
              top: 20,
              right: 20,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            )
          ]),
          Text(
            text!,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: click1,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  )),
              ElevatedButton(onPressed: click, child: Text("Buy Now")),
            ],
          )
        ],
      ),
    );
  }
}
