import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridCustomExample()));
}

class GridCustomExample extends StatelessWidget {
  const GridCustomExample({super.key});

  @override
  Widget build(BuildContext context) {
    final SliverGridDelegate delegate =
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        );

    final SliverChildBuilderDelegate childrenDelegate =
        SliverChildBuilderDelegate(
          (context, index) => Container(
            color: Colors.primaries[index % Colors.primaries.length],
            child: Center(child: Text('Box $index')),
          ),
          childCount: 15,
        );

    return Scaffold(
      appBar: AppBar(title: Text('GridView.custom Example')),
      body: GridView.custom(
        gridDelegate: delegate,
        childrenDelegate: childrenDelegate,
      ),
    );
  }
}
