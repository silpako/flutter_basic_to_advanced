import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Clipper_Custom(),
  ));
}

class Clipper_Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            //ClipRect === Rectangle
            ClipRect(
              child: Container(
                child: Align(
                  widthFactor: .4,
                  heightFactor: .4,
                  alignment: Alignment.center,
                  child: Image.network(
                      "https://media.istockphoto.com/id/533314469/photo/mustard-flower.jpg?s=612x612&w=0&k=20&c=6lBZjHErp4qTcXpB1IMPstQLcf5LEI2N-hcMxBF05fo="),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Rounded Rectangle
            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Container(
                child: Image.network(
                    "https://media.istockphoto.com/id/499956990/photo/group-of-happy-indian-children-playing-holi-desert-village-india.jpg?s=612x612&w=0&k=20&c=C74Xd0DC2tXBOPfenEsqgZXuJMXUo--iNz7wZ37lHMA="),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // clipoval

            ClipOval(
              child: Image.network(
                  "https://plus.unsplash.com/premium_photo-1714023800301-83390690e1f0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0OXx8fGVufDB8fHx8fA%3D%3D"),
            ),
            SizedBox(
              height: 20,
            ),

            ClipOval(
              child: Image.network(
                  "https://media.istockphoto.com/id/1222009180/photo/ice-cream-scoops-in-cones-with-copy-space-on-blue.jpg?s=612x612&w=0&k=20&c=eLG4-vL6-pUF2EKN2Osq0D3_o-hHW6hSflVDLIBW3mY="),
            ),
            SizedBox(
              height: 20,
            ),

            ClipPath(
              clipper: OctagonalClipper(),
              child: Container(
                height: 200,
                color: Colors.red,
                child: Center(
                  child: Text("OctagonalClipper"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ClipPath(
                clipper: OctagonalClipper(),
                child: Container(
                  child: Center(
                    child: Image.network(
                        "https://media.istockphoto.com/id/533314469/photo/mustard-flower.jpg?s=612x612&w=0&k=20&c=6lBZjHErp4qTcXpB1IMPstQLcf5LEI2N-hcMxBF05fo="),
                  ),
                )),

            ClipPath(
                clipper: StarClipper(8),
                child: Container(
                  child: Center(
                    child: Image.network(
                        "https://media.istockphoto.com/id/533314469/photo/mustard-flower.jpg?s=612x612&w=0&k=20&c=6lBZjHErp4qTcXpB1IMPstQLcf5LEI2N-hcMxBF05fo="),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
