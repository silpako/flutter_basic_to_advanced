import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Bottom_Sheet(),
  ));
}

class Bottom_Sheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onLongPress: () {
              showSheet(context);
            },
            child: Image.asset(
              "assets/icons/stickynotelogo.png",
              height: 100,
              width: 100,
            )),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
        // show bottom to up direction sheet
        context: context,
        builder: (context) {
          return Column(
            //widget
            mainAxisSize: MainAxisSize.min, // min space
            children: [
              Text("Share Via"),
              Divider(),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.green,
                ),
                title: Text("Whatsapp"),
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Colors.pink,
                ),
                title: Text("Instagram"),
              )
            ],
          );
        });
  }
}
