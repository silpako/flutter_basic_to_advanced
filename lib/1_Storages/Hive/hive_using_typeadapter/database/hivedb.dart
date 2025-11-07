// factory constructor - instance return
//singleton class craeted by factory constructor ,it have only single instance
import 'package:flutter_frameworks/1_Storages/Hive/hive_using_typeadapter/model/users.dart';
import 'package:hive/hive.dart';

class HiveDB {
  HiveDB._internal();
  static HiveDB instance = HiveDB._internal();

  factory HiveDB() {
    return instance;
  }

  Future<List<Users>> getUsers() async {
    final db = await Hive.openBox<Users>('users');
    return db.values.toList();
  }

  Future<void> addUser(Users user) async {
    final db = await Hive.openBox<Users>('users');
    db.put(user.id, user); // add email name and password to hive
  }
}
