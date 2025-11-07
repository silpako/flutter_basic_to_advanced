import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: BottomTabBarDemo()));

class BottomTabBarDemo extends StatelessWidget {
  const BottomTabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: const TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.person)),
          ],
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home")),
            Center(child: Text("Search")),
            Center(child: Text("Profile")),
          ],
        ),
      ),
    );
  }
}
