import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';

class mahlzeitErfassen extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.teal[100],
    endDrawer: menu(),
    appBar: AppBar(
      title: Text('Mahlzeit erfassen'),
      backgroundColor: Colors.cyanAccent,
    ),
    body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            width: 100,
            child: const Text("Mahlzeit:"),
            color: Colors.red[100],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(),
          ),
        ],
    )
  );
}