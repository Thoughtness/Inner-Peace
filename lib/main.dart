import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:inner_peace/mahlzeitData.dart';

void main() async{
  runApp(MyApp());

  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), 'innerPeace.db'),
  );
  onCreate: (db, version) {
    return db.execute('CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
  );
    version: 1,
    );
  },


  Map<String, dynamic> toMap() {
  return {
  'gericht': gericht,
  'zutaten': zutaten,
  'symptome': symptomeTotal,
  };
  }

  @override
  String toString() {
  return 'Mahlzeit{gericht: $gericht, zutaten: $zutaten, symptome: $symptomeTotal}';
  }

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        endDrawer: menu(),
        appBar: AppBar(
          title: Text('Hauptmenü',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
      );
}
