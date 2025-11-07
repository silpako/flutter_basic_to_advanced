import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Listview_constructor(),));
}
class Listview_constructor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview1"),),
      body: ListView(
        children: [
          Card(child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Pranav"),
            subtitle: Text("Hi"),
            trailing: Text("10.00"),)),

            Card(child: ListTile(
            leading: Image.asset("assets/icons/girl.jpg"),
            title: Text("Reya"),
            subtitle: Text("How are you"),
            trailing: Text("9.00"),)),

            Card(
            child: ListTile(
            leading:CircleAvatar
            (
              backgroundImage: AssetImage("assets/icons/girl.jpg"),
            ),
            title: Text("Reena"),
            subtitle: Text("How are you"),
            trailing: Text("8.00"),)),

             Card(
            child: ListTile(
            leading:CircleAvatar
            (
              backgroundImage: AssetImage("assets/icons/girl.jpg"),
            ),
            title: Text("Meena"),
            subtitle: Text("How ?"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Text("6.00"),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 10,
                  backgroundColor: Colors.teal,child: Text("2",style: TextStyle(fontSize: 10),),
                )

              ] ),)),
          
          
          
        ],
      ),
    );
  
  }

}