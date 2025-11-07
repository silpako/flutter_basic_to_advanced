import 'package:flutter/material.dart';
import 'package:flutter_frameworks/1_Storages/Hive/hive_using_typeadapter/database/hivedb.dart';
import 'package:flutter_frameworks/1_Storages/Hive/hive_using_typeadapter/model/users.dart';
import 'package:flutter_frameworks/1_Storages/Hive/hive_using_typeadapter/views/hive_home.dart';
import 'package:flutter_frameworks/1_Storages/Hive/hive_using_typeadapter/views/reg_hive.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<Users>('User'); //
  Hive.registerAdapter(UsersAdapter());
  runApp(GetMaterialApp(
    home: Hive_Login(),
  ));
}

class Hive_Login extends StatelessWidget {
  final email_controller = TextEditingController();
  final pwd_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login Page"),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: email_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "User Name"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: pwd_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () async {
                  final users = await HiveDB.instance.getUsers();
                  validateLogin(users);
                },
                shape: const StadiumBorder(),
                color: Colors.pink,
                child: const Text('Login Here'),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(Hive_Reg());
                  },
                  child: Text("Not a user Register Here...!"))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> validateLogin(List<Users> users) async {
    final email = email_controller.text.trim();
    final pwd = pwd_controller.text.trim();
    bool userFound = false;
    if (email != "" && pwd != "") {
      await Future.forEach(users, (user) {
        if (user.email == email && user.password == pwd) {
          userFound = true;
        } else {
          userFound = false;
        }
      });
      if (userFound == true) {
        Get.offAll(() => HiveHome(email: email));
        Get.snackbar("Success", "Login Success", backgroundColor: Colors.green);
      } else {
        Get.snackbar("Error", "Login Failed,No user Exists",
            backgroundColor: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Fields must not be empty",
          backgroundColor: Colors.red);
    }
  }
}
