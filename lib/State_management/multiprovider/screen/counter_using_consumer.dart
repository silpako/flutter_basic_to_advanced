import 'package:flutter/material.dart';
import 'package:flutter_basic_to_advanced/State_management/multiprovider/controller/counter_provider.dart';
import 'package:flutter_basic_to_advanced/State_management/multiprovider/controller/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider1()),
      ],
      child: MyApp1(),
    ),
  );
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider",
      theme: Provider.of<ThemeProvider>(context).darkTheme
          ? ThemeData.dark()
          : ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: IncreCount1(),
    );
  }
}

class IncreCount1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer(
          builder: (context, ThemeProvider provider, child) {
            return IconButton(
              onPressed: () {
                provider.switchTheme();
              },
              icon: Icon(
                provider.darkTheme ? Icons.dark_mode : Icons.light_mode,
              ),
            );
          },
        ),
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
            Consumer<CounterProvider1>(
              builder:
                  (
                    BuildContext context,
                    CounterProvider1 counterProvider,
                    Widget? child,
                  ) {
                    return Text(
                      "Count : ${counterProvider.counter.count}",
                      style: const TextStyle(fontSize: 25),
                    );
                  },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Provider.of<CounterProvider1>(
                      context,
                      listen: false,
                    ).increment();
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Provider.of<CounterProvider1>(
                      context,
                      listen: false,
                    ).decrement();
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
