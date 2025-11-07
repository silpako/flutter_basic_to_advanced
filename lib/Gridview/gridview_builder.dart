import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridBuilderExample()));
}

class GridBuilderExample extends StatelessWidget {
  final List<String> images = List.generate(
    20,
    (i) => 'https://picsum.photos/200?random=$i',
  );

  GridBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView.builder Example')),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => print('Tapped on item $index'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(images[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
