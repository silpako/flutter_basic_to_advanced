import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Nav_Drawer(),
  ));
}

class Nav_Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 204, 29),
        title: Text(
          "My Drawer",
          style: TextStyle(color: Colors.black),
        ),
      ),

      // end drawer--- right side show
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              //backgroundimage
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://t4.ftcdn.net/jpg/05/16/11/61/360_F_516116119_sN1UcGz4IDO1sQM5ntz4VBa53Huzd3p2.jpg"))),
              accountName: Text(
                "Arjun",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              accountEmail: Text(
                "arjun@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.filmibeat.com/img/popcorn/profile_photos/arjunsyamgopan-20240309123756-62134.jpg"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcMLy1l1zyKPEbqdNhXNU-ZQKqfaHZg5743g&usqp=CAU"),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Favorite"),
            ),
            ListTile(
              leading: Icon(Icons.park_rounded),
              title: Text("Notificaton"),
            ),
            ListTile(
              leading: Icon(Icons.work_history_rounded),
              title: Text("WorkFlow"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            )
          ],
        ),
      ),
    );
  }
}
