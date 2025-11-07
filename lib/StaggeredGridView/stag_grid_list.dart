import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Staggered_Grid_List(),
  ));
}

class Staggered_Grid_List extends StatelessWidget {
  var image = [
    "assets/images/Apple.png",
    "assets/images/Banana.png",
    "assets/images/Blackberry.png",
    "assets/images/Blueberry.png",
    "assets/images/kiwi.png",
    "assets/images/Strawberry.png"
  ];
  var crossac = [2, 1, 1, 2, 1, 2];
  var maxac = [1, 2, 1, 2, 1, 1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 4,
            children: List.generate(
                6,
                (index) => StaggeredGridTile.count(
                      crossAxisCellCount: crossac[index],
                      mainAxisCellCount: maxac[index],
                      child: Card(
                        color:
                            Colors.primaries[index % Colors.primaries.length],
                        child: Image.asset(
                          image[index],
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ))),
      ),
    );
  }
}
