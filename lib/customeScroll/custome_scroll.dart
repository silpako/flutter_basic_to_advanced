import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Custom_Scrolls(),
  ));
}

class Custom_Scrolls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: false, // appbar depends on true or false
            pinned: true,
            title: Text("Custom Scroll - Sliver"),
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.black,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      suffixIcon: Icon(Icons.camera_alt_outlined),
                      prefixIcon: Icon(Icons.search_rounded)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                    child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text("Rithu"),
                      subtitle: Text("8899004310"),
                    ),
                  )))
        ],
      ),
    );
  }
}
