import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Inner Peace',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MyHomePage(),
  );
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    endDrawer: menu(),
    appBar: AppBar(
      title: Text('Hauptmenü'),
      backgroundColor: Colors.cyanAccent,
    ),
  );
}


