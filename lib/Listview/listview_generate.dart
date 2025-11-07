import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CardListGenerate()));
}

class CardListGenerate extends StatelessWidget {
  const CardListGenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cards with generate")),
      body: ListView(
        children: List.generate(
          10,
          (index) => Card(
            elevation: 4,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text('Title ${index + 1}'),
              subtitle: Text('Subtitle ${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
