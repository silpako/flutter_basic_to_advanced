import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Listview/listview_builder.dart';
import 'package:flutter_frameworks/Listview/listview_constructor.dart';
import 'package:flutter_frameworks/Listview/listview_separator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Custom_Appbar(),
  ));
}

class Custom_Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Broadcast")),
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("Setting"))
              ];
            })
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              // preferred size tabber=appbar
              child: Container(
                child: TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.people_rounded),
                  ),
                  Tab(
                    text: "Chat",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  )
                ]),
              )),
        ),
        body: TabBarView(children: [
          ListView_Builder(),
          ListView_Separated(),
          ListView_Builder(),
          Listview_constructor(),
        ]),
      ),
    );
  }
}
