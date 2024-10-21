import 'package:flutter/material.dart';
import 'package:flutter_application_1/appboldtext.dart';
import 'package:flutter_application_1/apptext.dart';

class Welcomepg extends StatefulWidget {
  const Welcomepg({super.key});

  @override
  State<Welcomepg> createState() => _WelcomepgState();
}

class _WelcomepgState extends State<Welcomepg> {
  List<String> images = [
    "assets/images/mountains.jpg",
    "assets/images/sea.jpg",
    "assets/images/pexels-francesco-ungaro-1671325.jpg"
  ];
  List<String> text=[
    "It's not the mountain we conquer, but ourselves",
    "Meet me where the sky meets the sky",
    "All good thing are wild and free"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover, // Ensures the image covers the entire container
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Expanded( // Wrap Column in Expanded to prevent overflow
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Appboldtext(size: 50, text: "Trips"),
                        Appboldtext(size: 30, text: "Discover the unknown"),
                        Apptext(
                          size: 20,
                          text:text[index],
                          color: const Color.fromARGB(255, 201, 192, 111),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false, // To hide the debug banner
      home: Welcomepg(), 
    ),
  );
}
