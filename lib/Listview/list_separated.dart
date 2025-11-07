import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: SeparatedListView()));

class SeparatedListView extends StatelessWidget {
  const SeparatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> cities = [
      "Kochi",
      "Chennai",
      "Bangalore",
      "Hyderabad",
      "Mumbai",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.separated"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.location_city),
            title: Text(cities[index]),
          );
        },
        separatorBuilder: (context, index) =>
            Divider(color: Colors.grey, thickness: 1),
      ),
    );
  }
}
