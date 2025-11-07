import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frameworks/StaggeredGridView/stag_grid_list.dart';

void main() {
  runApp(MaterialApp(
    home: Carousal_Slider(),
  ));
}

class Carousal_Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousal Slider"),
      ),
      body: CarouselSlider(
          items: [
            GestureDetector(
              onDoubleTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Staggered_Grid_List()));
              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/623364422/photo/vanilla-and-blueberry-ice-cream.jpg?s=612x612&w=0&k=20&c=lY1tq0O1y9ZS_p9ITiKWAdjBfRkTD3iOmP0-lh_euf8="))),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Staggered_Grid_List()));
              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/2155278168/photo/green-vegetable-avocado-ice-cream.jpg?s=612x612&w=0&k=20&c=ZbSZ8i3UOwxPXXKT7qVaCXV8WcrvntBsK-Gz4VkGk10="))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1456234806/photo/mango-ice-cream-served-in-cup-isolated-on-grey-background-top-view-of-indian-and-bangladesh.jpg?s=612x612&w=0&k=20&c=Uks87rmzZT5tQtD48aRG9S-EUqSBTlAlkpOKgLUlIe4="))),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/657090194/photo/rajwari-or-rajwadi-sweet-kesar-badam-pista-kulfi-or-ice-cream-candy.jpg?s=612x612&w=0&k=20&c=qr9qpyJKBHBy9iS9nQn-0h4f-xn6rE4TUOtXiYZwkoY="))),
            ),
          ],
          options: CarouselOptions(
            autoPlay: true, // automatically play
            viewportFraction: .5, //1
            height: 300,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlayCurve: Curves.easeIn,
            autoPlayAnimationDuration: Duration(seconds: 2),
          )),
    );
  }
}
