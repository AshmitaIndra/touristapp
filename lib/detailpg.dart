import 'package:flutter/material.dart';
import 'package:flutter_application_1/appboldtext.dart';
import 'package:flutter_application_1/appbuttons.dart';
import 'package:flutter_application_1/apptext.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  int stars = 3;
  int selectedIndex = -1;

  void onSecondButtonClick() {
    print("Second button clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/kachenjunga.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 275,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 275,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Appboldtext(size: 30, text: "Darjeeling", color: Colors.black),
                            Appboldtext(size: 20, text: "20000", color: Colors.black),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.grey),
                            SizedBox(width: 5),
                            Apptext(size: 20, text: "West Bengal, India", color: Colors.grey),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(Icons.star, color: stars > index ? Colors.yellow : Colors.grey);
                              }),
                            ),
                            SizedBox(width: 10),
                            Apptext(size: 10, text: "(4.0)", color: Colors.green),
                          ],
                        ),
                        SizedBox(height: 25),
                        Appboldtext(size: 25, text: "People", color: Colors.black),
                        SizedBox(height: 5),
                        Apptext(size: 17, text: "No of people in your group", color: Colors.grey),
                        SizedBox(height: 10),
                        Wrap(
                          spacing: 10.0,
                          children: List.generate(5, (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: AppButton(
                                size: 50,
                                color: selectedIndex == index ? Colors.black : Colors.white,
                                backgroundColor: selectedIndex == index ? Colors.grey : Colors.white,
                                borderColor: Colors.black,
                                text: (index + 1).toString(), 
                                textsize: 20,  
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: 25),
                        Appboldtext(size: 25, text: "Description", color: Colors.black),
                        SizedBox(height: 10),
                        Apptext(
                          size: 15,
                          text: "Darjeeling, located in the Indian state of West Bengal, is a popular hill station known for its stunning views of the Himalayas, including Mount Kanchenjunga. Famous for its tea gardens, scenic landscapes, and rich colonial history, Darjeeling offers a serene escape with attractions like the Darjeeling Himalayan Railway and vibrant local culture.",
                          color: Colors.black.withOpacity(0.2),
                        ),
                        SizedBox(height: 25),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: onSecondButtonClick,
                            child: Container(
                              width: double.infinity,  
                              child: AppButton(
                                size: 60,
                                color: Colors.white,  
                                backgroundColor: Colors.blue,
                                borderColor: Colors.white,
                                text: "BOOK MY TRIP!", textsize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
