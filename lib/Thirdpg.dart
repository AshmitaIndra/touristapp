import 'package:flutter/material.dart';
import 'package:flutter_application_1/assam.dart';
import 'package:flutter_application_1/detailpg.dart';
import 'package:flutter_application_1/kerela.dart';
import 'package:flutter_application_1/kolkata.dart';
import 'package:flutter_application_1/odisha.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    final List<Map<String, Object>> places = [
      {'name': "Odisha", 'page': const Odisha()},
      {'name': "Assam", 'page': const Assampage()},
      {'name': "West Bengal", 'page': const Kolkatapage()},
      {'name': "Darjeeling" ,'page':  const Detailpage()},
      {'name': "Kerala" ,'page':  const Kerela()},
    ];

    return Scaffold(
      
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(places[index]['name'] as String),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => places[index]['page'] as Widget,
                ),
              );
            },
          );
        },
      ),
    );
  }
}


