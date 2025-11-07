import 'package:flutter/material.dart';
import 'package:flutter_frameworks/Conformpassword/splash.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IntroScreen(),
  ));
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration decorationPage = PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        bodyTextStyle: TextStyle(
            fontSize: 20, fontStyle: FontStyle.italic, color: Colors.brown),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.white, Colors.blue],
                begin: Alignment.bottomLeft,
                end: Alignment
                    .topRight))); // below properti globally decalred and called

    return IntroductionScreen(
      pages: [
        PageViewModel(
          // here  we can call in this method icon, skip , done
          //decoration: PageDecoration(),
          decoration: decorationPage,
          title: "Delivery to your home",
          body:
              "Introduction/ Lorem Ipsum is simply dummy text of the printing and typesetting",
          image: Introimage(
              "https://media.istockphoto.com/id/2150857625/photo/hands-package-and-paper-bag-as-delivery-with-customer-or-client-order-parcel-and-courier.jpg?s=612x612&w=0&k=20&c=wegSN0rocEM5Snoz-lXwKTKPnYctddJ_uEfByObinZY="),
          // introinage is we created and customised - Refractoring widget -- method/ function
          // here use function
        ),
        PageViewModel(
          title: "Second Page",
          body:
              "Introduction/ Lorem Ipsum is simply dummy text of the printing and typesetting",
          image: Introimage(
              "https://media.istockphoto.com/id/1369503388/photo/young-indian-delivary-boy-with-medical-face-mask-searching-adress-on-mobile-phone-using-map.jpg?s=612x612&w=0&k=20&c=yXr9nuLUgBgL3MlOySSEqbx-1CErzQYFMLDuAAwHbrk="),
        ),
        PageViewModel(
          title: "Third Page",
          body:
              "Introduction/ Lorem Ipsum is simply dummy text of the printing and typesetting",
          image: Introimage(
              "https://media.istockphoto.com/id/1300476665/photo/high-angle-view-asian-chinese-womans-hand-on-mobile-app-for-online-food-delivery-during.jpg?s=612x612&w=0&k=20&c=4LkbammKgGvw3_xHYz_YZLdo_7zjeUCeDTC3pnGDUBE="),
        )
      ],
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splah2())),
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splah2())),
      showSkipButton: true,
      skip: Text("Skip"),
      //showBackButton: true,
      //back: Text("Back"),
      next: Icon(Icons.arrow_forward),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          size: Size(12, 10),
          activeSize: Size(22, 10),
          activeColor: Colors.green),
    );
  }

// function
  Widget Introimage(String imgpath) {
    return Align(
      // to align
      alignment: Alignment.topCenter, // top center aligned
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imgpath))),
      ),
    );
  }
}
