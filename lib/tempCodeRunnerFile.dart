import 'package:flutter/material.dart';
import 'package:flutter_application_1/appboldtext.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> with TickerProviderStateMixin {
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
                    color: Color.fromARGB(255, 60, 33, 215),
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
              color: const Color.fromARGB(221, 46, 17, 163),
            ),
          ),
          const SizedBox(height: 30),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: "Places"),
              Tab(text: "Inspiration"),
              Tab(text: "The Emotions"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: Text("Hi")),
                Center(child: Text("Hi")),
                Center(child: Text("Hi")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
