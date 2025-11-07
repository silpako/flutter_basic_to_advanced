import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Refractoring/refac_card.dart';

void main() {
  runApp(MaterialApp(
    home: GridView_refractoring(),
  ));
}

class GridView_refractoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid with Refractoring"),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
          children: [
            custom_card(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1456234806/photo/mango-ice-cream-served-in-cup-isolated-on-grey-background-top-view-of-indian-and-bangladesh.jpg?s=612x612&w=0&k=20&c=Uks87rmzZT5tQtD48aRG9S-EUqSBTlAlkpOKgLUlIe4="),
                text: "My Product",
                click: () {},
                click1: () {}),
            custom_card(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1456234806/photo/mango-ice-cream-served-in-cup-isolated-on-grey-background-top-view-of-indian-and-bangladesh.jpg?s=612x612&w=0&k=20&c=Uks87rmzZT5tQtD48aRG9S-EUqSBTlAlkpOKgLUlIe4="),
                text: "My Product",
                click: () {},
                click1: () {}),
            custom_card(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1456234806/photo/mango-ice-cream-served-in-cup-isolated-on-grey-background-top-view-of-indian-and-bangladesh.jpg?s=612x612&w=0&k=20&c=Uks87rmzZT5tQtD48aRG9S-EUqSBTlAlkpOKgLUlIe4="),
                text: "My Product",
                click: () {},
                click1: () {}),
            custom_card(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1456234806/photo/mango-ice-cream-served-in-cup-isolated-on-grey-background-top-view-of-indian-and-bangladesh.jpg?s=612x612&w=0&k=20&c=Uks87rmzZT5tQtD48aRG9S-EUqSBTlAlkpOKgLUlIe4="),
                text: "My Product",
                click: () {},
                click1: () {}),
            custom_card(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1456234806/photo/mango-ice-cream-served-in-cup-isolated-on-grey-background-top-view-of-indian-and-bangladesh.jpg?s=612x612&w=0&k=20&c=Uks87rmzZT5tQtD48aRG9S-EUqSBTlAlkpOKgLUlIe4="),
                text: "My Product",
                click: () {},
                click1: () {}),
            custom_card(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1456234806/photo/mango-ice-cream-served-in-cup-isolated-on-grey-background-top-view-of-indian-and-bangladesh.jpg?s=612x612&w=0&k=20&c=Uks87rmzZT5tQtD48aRG9S-EUqSBTlAlkpOKgLUlIe4="),
                text: "My Product",
                click: () {},
                click1: () {}),
          ]),
    );
  }
}
