import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BuilderListView()));

class BuilderListView extends StatelessWidget {
  const BuilderListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> names = [
      "Alice",
      "Bob",
      "Charlie",
      "David",
      "Eve",
      "Frank",
    ];
    final List<String> phone = [
      "8848032455",
      "9876549900",
      "2984989899",
      "2849859400",
      "9849894899",
      "9950490490",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(names[index][0])),
            title: Text(names[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.message),
          );
        },
      ),
    );
  }
}
