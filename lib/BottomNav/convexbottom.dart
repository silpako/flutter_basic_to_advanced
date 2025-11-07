import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Gridview/gridview_builder.dart';
import 'package:flutter_frameworks/Gridview/gridview_constructor.dart';
import 'package:flutter_frameworks/Gridview/gridview_count.dart';
import 'package:flutter_frameworks/Gridview/gridview_extent.dart';

void main() {
  runApp(MaterialApp(
    home: Convex_BottomNav(),
  ));
}

class Convex_BottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Convex_BottomNavState();
}

class _Convex_BottomNavState extends State {
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
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.red,
          style: TabStyle.react,
          items: [
            TabItem(icon: Icons.list),
            TabItem(icon: Icons.calendar_today),
            TabItem(icon: Icons.assessment),
            TabItem(icon: Icons.home),
          ],
          initialActiveIndex: 1,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          }),
      body: screens[index],
    );
  }
}
