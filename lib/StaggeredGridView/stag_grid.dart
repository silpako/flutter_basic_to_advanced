import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Staggered_Grid(),
  ));
}

class Staggered_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid View"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3, // maxiimum cross axis count
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 1,
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Icon(Icons.favorite),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  color: Colors.red,
                  child: Icon(Icons.account_circle_rounded),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  color: Colors.pink,
                  child: Icon(Icons.account_circle_rounded),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Card(
                  color: Colors.blue,
                  child: Icon(Icons.account_circle_rounded),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  color: Color.fromARGB(255, 228, 198, 99),
                  child: Icon(Icons.account_circle_rounded),
                ))
          ],
        ),
      ),
    );
  }
}
