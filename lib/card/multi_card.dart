import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CardListExample()));
}

class CardListExample extends StatelessWidget {
  const CardListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Cards")),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Card(
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person, color: Colors.blue),
              ),
              title: Text("John Doe"),
              subtitle: Text("Software Engineer"),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.green),
              title: Text("Jane Smith"),
              subtitle: Text("UI/UX Designer"),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.orange),
              title: Text("Mark Brown"),
              subtitle: Text("Product Manager"),
            ),
          ),
        ],
      ),
    );
  }
}
