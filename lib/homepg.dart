import 'package:flutter/material.dart';
import 'package:flutter_application_1/appboldtext.dart';
import 'package:flutter_application_1/apptext.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> with TickerProviderStateMixin {
  var images = {
    "assets/images/mountain.png": "Trekking",
    "assets/images/ropeway.png": "Ropeway",
    "assets/images/scuba.png": "Scuba",
    "assets/images/climb.png": "Rock Climbing"
  };
  List<String> places = [
    "assets/images/odisha.jpeg",
    "assets/images/assam.jpeg",
    "assets/images/kolkata.jpeg",
    "assets/images/kachenjunga.jpg",
    "assets/images/kerela.jpg",
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10.0, top: 50.0, right: 20.0),
            child: Row(
              children: [
                const Icon(Icons.menu, color: Colors.black),
                const Expanded(child: SizedBox()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Appboldtext(
              size: 30,
              text: "Discover",
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.black,
            tabs: const [
              Tab(text: "Places"),
              Tab(text: "Inspiration"),
              Tab(text: "The Emotions"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image:AssetImage(places[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appboldtext(
                          size: 24,
                          text: "Find Your Inspiration",
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Apptext(
                          size: 16,
                          text: "Explore breathtaking landscapes and unique experiences that stir the soul. Let these places inspire your next adventure.",
                          color: Colors.grey[700]!,
                        ),
                      ],
                    ),
                  ),
                ),
               
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appboldtext(
                          size: 24,
                          text: "Experience The Emotions",
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Apptext(
                          size: 16,
                          text: "Travel is not just about destinations; it's about the feelings and memories we create along the way. Discover the magic of new experiences.",
                          color: Colors.grey[700]!,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Appboldtext(
                  size: 20,
                  text: "Explore more",
                  color: Colors.black,
                ),
                const Spacer(),
                Apptext(
                  size: 15,
                  text: "See all",
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(images.keys.elementAt(index)),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Apptext(
                      size: 15,
                      text: images.values.elementAt(index),
                      color: Colors.black54,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
