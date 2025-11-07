import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MaterialApp(
    home: Read_more(),
  ));
}

class Read_more extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read More Less"),
      ),
      body: Column(
        children: [
          ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimMode: TrimMode.Line,
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimMode: TrimMode.Line,
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
