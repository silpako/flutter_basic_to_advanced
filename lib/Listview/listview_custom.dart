import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CustomListView()));

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.custom "),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate([
          Container(
            height: 80,
            color: Colors.red,
            child: Center(child: Text("Item 1")),
          ),
          Container(
            height: 80,
            color: Colors.green,
            child: Center(child: Text("Item 2")),
          ),
          Container(
            height: 80,
            color: Colors.blue,
            child: Center(child: Text("Item 3")),
          ),
        ]),
      ),
    );
  }
}
