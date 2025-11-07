import 'package:flutter/material.dart';

class CustCard extends StatelessWidget {
  final NetworkImage? image;
  final String? text;
  final String? text1;
  final String? price;

  // Create constructor
  CustCard({
    required this.image,
    required this.text,
    required this.text1,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(
            255, 60, 58, 58), // Background color of the container
        borderRadius: BorderRadius.circular(15), // Circular border
      ),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  15), // Match the container border radius
            ),
            color: Color.fromARGB(255, 67, 66, 66), // Card background color
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(image: image!),
                  ),
                  SizedBox(height: 10),
                  Text(
                    text!,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    text1!,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    price!,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
