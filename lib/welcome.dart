import 'package:flutter/material.dart';

class Welcomepg extends StatefulWidget {
  const Welcomepg({super.key});

  @override
  State<Welcomepg> createState() => _WelcomepgState();
}

class _WelcomepgState extends State<Welcomepg> {
  List<String> images = [
    "assets/images/forests.jpg",
    "assets/images/mountains.jpg",
    "assets/images/sea.jpg" 
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
          );
        },
      ),
    );
  }
}