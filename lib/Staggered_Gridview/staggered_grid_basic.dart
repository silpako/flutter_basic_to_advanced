import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(home: BasicStaggeredGrid()));
}

class BasicStaggeredGrid extends StatelessWidget {
  const BasicStaggeredGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StaggeredGrid Example')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGrid.count(
          crossAxisCount: 4, // total columns in the grid
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            // Each tile can take different cell size
            StaggeredGridTile.count(
              crossAxisCellCount: 2, // takes 2 columns
              mainAxisCellCount: 2, // takes 2 rows
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Tile 1\n(2x2)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "Tile 2\n(2x1)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    "Tile 3\n(1x1)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.purple,
                child: Center(
                  child: Text(
                    "Tile 4\n(3x1)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
