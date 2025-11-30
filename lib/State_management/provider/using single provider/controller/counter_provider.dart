import 'package:flutter/material.dart';
import 'package:flutter_basic_to_advanced/State_management/provider/using%20single%20provider/model/counter.dart';

class CounterProvider extends ChangeNotifier {
  final Counter _counter = Counter(0); // private ayond getter tazhey koduthath
  Counter get counter => _counter;

  void increment() {
    _counter.count++;
    notifyListeners();
  }

  void decrement() {
    _counter.count--;
    notifyListeners();
  }
}
