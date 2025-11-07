import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: ExpandedExample(), debugShowCheckedModeBanner: false),
  );
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget Example"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Example 1: Expanded in a Row
          Row(
            children: [
              Expanded(
                flex: 1, // 1 part
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text("1x")),
                ),
              ),
              Expanded(
                flex: 2, // 2 parts
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Center(child: Text("2x")),
                ),
              ),
              Expanded(
                flex: 1, // 1 part
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text("1x")),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          // Example 2: Expanded in a Column
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    color: Colors.orange,
                    child: Center(child: Text("Top - flex 2")),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Colors.purple,
                    child: Center(child: Text("Bottom - flex 1")),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
