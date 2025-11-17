import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainPageAnimation()));
}

class MainPageAnimation extends StatelessWidget {
  const MainPageAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Main Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ------------------------ Slide Transition ------------------------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(),
                backgroundColor: Colors.lightGreen,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 1),
                    pageBuilder: (context, anim1, anim2) {
                      return Second_Page_Animation(title: "Slide Transition");
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation = CurvedAnimation(
                            parent: animation,
                            curve: Curves.fastEaseInToSlowEaseOut,
                          );

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                  ),
                );
              },
              child: Text("Slide Transition"),
            ),

            SizedBox(height: 30),

            // ------------------------ Fade Transition ------------------------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(),
                backgroundColor: Colors.lightGreen,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 800),
                    pageBuilder: (context, anim1, anim2) {
                      return Second_Page_Animation(title: "Fade Transition");
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                  ),
                );
              },
              child: Text("Fade Transition"),
            ),

            SizedBox(height: 30),

            // ------------------------ Scale Transition ------------------------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(),
                backgroundColor: Colors.lightGreen,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 900),
                    pageBuilder: (context, anim1, anim2) {
                      return Second_Page_Animation(title: "Scale Transition");
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                          return ScaleTransition(
                            scale: Tween<double>(begin: 0.0, end: 1.0).animate(
                              CurvedAnimation(
                                parent: animation,
                                curve: Curves.fastOutSlowIn,
                              ),
                            ),
                            child: child,
                          );
                        },
                  ),
                );
              },
              child: Text("Scale Transition"),
            ),
          ],
        ),
      ),
    );
  }
}

class Second_Page_Animation extends StatelessWidget {
  final String title;
  const Second_Page_Animation({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Go Back", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
