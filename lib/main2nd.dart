import 'package:flutter/material.dart';
import 'package:flutter_application_1/Fourthpg.dart';
import 'package:flutter_application_1/Secondpg.dart';
import 'package:flutter_application_1/Thirdpg.dart';
import 'package:flutter_application_1/homepg.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List pages = [Homepg(), SearchPage(), MyPage()];
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(220, 158, 158, 158), 
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
