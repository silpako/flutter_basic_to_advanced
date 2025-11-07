import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView_constum(),
  ));
}

class ListView_constum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Custom"),
      ),
      body: ListView.custom(
        //childrenDelegate: SliverChildListDelegate([])
        childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => Card(
                  child: Icon(Icons.account_balance),
                ),
            childCount: 10),
      ),
    );
  }
}
