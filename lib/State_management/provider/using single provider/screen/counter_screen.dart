import 'package:flutter/material.dart';
import 'package:flutter_basic_to_advanced/State_management/provider/using%20single%20provider/controller/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => CounterProvider(),
        child: IncreCount(),
      ),
    ),
  );
}

class IncreCount extends StatelessWidget {
  const IncreCount({super.key});

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    // specify which provider is working on this screen
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Press Button to Increment value",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Count : ${counterProvider.counter.count}",
              style: const TextStyle(fontSize: 25),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       counterProvider.increment();
            //     },
            //     child: const Text("increment"))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                InkWell(
                  onTap: () {
                    counterProvider.increment();
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add),
                  ),
                ),
                InkWell(
                  onTap: () {
                    counterProvider.decrement();
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.minimize_rounded),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
