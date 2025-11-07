import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: SimpleCarousel()),
  );
}

class SimpleCarousel extends StatelessWidget {
  final List<String> images = [
    "https://picsum.photos/id/1011/800/400",
    "https://picsum.photos/id/1012/800/400",
    "https://picsum.photos/id/1013/800/400",
  ];

  SimpleCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Carousel Slider"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider(
          items: images
              .map(
                (url) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayInterval: Duration(seconds: 3),
          ),
        ),
      ),
    );
  }
}
