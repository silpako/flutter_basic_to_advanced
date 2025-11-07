import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_Builder(),));
}
// ignore: must_be_immutable
class ListView_Builder extends StatelessWidget{
  var img=
  [
    "assets/images/Apple.png",
    "assets/images/Banana.png",
    "assets/images/Blackberry.png",
    "assets/images/Blueberry.png",
    "assets/images/kiwi.png",
    "assets/images/Strawberry.png",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView_Builder"),),

      body: ListView(             // scrollable widget
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.insert_link_outlined),
              backgroundColor: Colors.teal,
            ),
            title: Text("Create Call Link"),
            subtitle: Text("Share a link"),
          ),
          Padding(padding: EdgeInsets.only(left: 10.0),
          child:Text("Recent") ,),
          ListView.builder(      // scrollable widget
          physics: NeverScrollableScrollPhysics(), // turn off scrolling property of inner listview
          shrinkWrap: true,         // compress listview
          itemCount: 6,         // It is used to set the count 
          itemBuilder:(context,index) {
            return Card(
              child:ListTile(
                title: Text("Silpa"),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_missed_outlined,color: Color.fromARGB(255, 190, 57, 48),),
                    Text(" 25 sep 2024,"),
                    Text("11.00")
                  ],
                ),
                leading: Image.asset(img[index]),
                trailing: Icon(Icons.shop),
              ) ,
      
            );
          }),
        ]
      ),
    );
  }
}