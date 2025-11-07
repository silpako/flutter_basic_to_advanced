import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Gridview/gridview_builder.dart';
import 'package:flutter_frameworks/Gridview/gridview_constructor.dart';
import 'package:flutter_frameworks/Gridview/gridview_count.dart';
import 'package:flutter_frameworks/Gridview/gridview_extent.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNav(),
  ));
}

class BottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavState();
}

class _BottomNavState extends State {
  int index = 0; // set the current index

  var screens = [
    GridView_constructor(),
    Gridview_builder(),
    GridView_count(),
    GridView_extent()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          //type: BottomNavigationBarType.fixed, // fixed and shifted
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.yellow,
          currentIndex: index, // show selected or current index
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex; // here index value change
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.brown,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.add_box_rounded),
                label: "Reels"),
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.park_rounded),
                label: "Notify"),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.account_box),
                label: "profile")
          ]),
      body: screens[index],
    );
  }
}
