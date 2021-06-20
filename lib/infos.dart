import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';

class infos extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    endDrawer: menu(),
    appBar: AppBar(
      title: Text('Infos',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.cyanAccent,
    ),
  );
}