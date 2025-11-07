import 'package:flutter/material.dart';
import 'package:flutter_frameworks/RefactorTask/createcard.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: grid_Refractor_main()));
}

class grid_Refractor_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "Recomended",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
        children: [
          CustCard(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZNoH3tKrwfgQetUwxndOGQhVQx6WeIUr5Psh2sKKUOFtNkAhDuYT-IJUqGG5HgpZo-PI&usqp=CAU"),
              text: "Nike Air Max 270",
              text1: "React ENG",
              price: "\$ 299"),
          CustCard(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZNoH3tKrwfgQetUwxndOGQhVQx6WeIUr5Psh2sKKUOFtNkAhDuYT-IJUqGG5HgpZo-PI&usqp=CAU"),
              text: "Nike Air Max 270",
              text1: "React ENG",
              price: "\$ 299"),
          CustCard(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZNoH3tKrwfgQetUwxndOGQhVQx6WeIUr5Psh2sKKUOFtNkAhDuYT-IJUqGG5HgpZo-PI&usqp=CAU"),
              text: "Nike Air Max 270",
              text1: "React ENG",
              price: "\$ 299"),
          CustCard(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZNoH3tKrwfgQetUwxndOGQhVQx6WeIUr5Psh2sKKUOFtNkAhDuYT-IJUqGG5HgpZo-PI&usqp=CAU"),
              text: "Nike Air Max 270",
              text1: "React ENG",
              price: "\$ 299")
        ],
      ),
    );
  }
}
