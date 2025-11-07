import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expansion_Tile(),
  ));
}

class Expansion_Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Card"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: Text("Hari Krishnan"),
              subtitle: Text("Kuwai"),
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                  title: Text("pink"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  title: Text("Green"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                  title: Text("Yellow"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                  ),
                  title: Text("Blue"),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Silpa"),
              subtitle: Text("Kuwai"),
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                  title: Text("pink"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  title: Text("Green"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                  title: Text("Yellow"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                  ),
                  title: Text("Blue"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
