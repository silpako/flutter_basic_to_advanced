import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NetworkImageWideget()));
}

class NetworkImageWideget extends StatelessWidget {
  const NetworkImageWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network Image")),
      body: Center(
        child: Image.network(
          "https://images.unsplash.com/photo-1614707267537-b85aaf00c4b7?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y3VwJTIwY2FrZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&q=60&w=600",
        ),
      ),
    );
  }
}
