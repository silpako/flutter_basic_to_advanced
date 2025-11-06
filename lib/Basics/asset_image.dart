import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AssetImageWidget()));
}

class AssetImageWidget extends StatelessWidget {
  const AssetImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asset Image")),

      body: Center(
        child: Image.asset(
          "asset/asset.jpg",
          height: 500,
          width: 500,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
