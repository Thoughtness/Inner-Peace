import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hauptmenü'),
        ),
        drawer: Drawer(),
        body: Center(
          child: Image(
            image: AssetImage('images/Inner Peace.jpg'),
          ),
        ),
      ),
    ),
  );
}
