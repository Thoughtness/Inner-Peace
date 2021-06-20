import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';
import 'package:inner_peace/erfassteMahlzeitenBody.dart';

class mahlzeitErfassen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.teal[100],
        endDrawer: menu(),
        appBar: AppBar(
          title: Text('Mahlzeit erfassen',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
        body: erfassteMahlzeitenBody("Gericht", "Zutaten", "Symptome"),
      );
}
