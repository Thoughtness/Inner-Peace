import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';

class symptomeErfassen extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    endDrawer: menu(),
    appBar: AppBar(
      title: Text('Symptome erfassen'),
      backgroundColor: Colors.cyanAccent,
    ),
  );
}