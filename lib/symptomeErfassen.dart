import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';
import 'package:inner_peace/guiElements.dart';

class symptomeErfassen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        endDrawer: menu(),
        appBar: AppBar(
          title: Text('Symptome erfassen',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
    body: customSlider(),
      );
}
