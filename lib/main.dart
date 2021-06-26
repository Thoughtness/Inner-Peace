import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:inner_peace/mealData.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';

void main() async {
  runApp(MyApp());

  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), 'innerPeace.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE meal(id INTEGER PRIMARY KEY, gericht TEXT, zutaten TEXT, symptome INTEGER)',
      );
    },
    version: 1,
  );

  //Fügt eine Mahlzeit hinzu
  Future<void> insertMeal(mealData meal) async {
    final db = await database;
    await db.insert(
      'meals',
      meal.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //holt alle Mahlzeiten von dessen Tabelle
  Future<List<mealData>> meals() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('meals');
    return List.generate(maps.length, (i) {
      return mealData(
          id: maps[i]['id'],
          gericht: maps[i]['gericht'],
          zutaten: maps[i]['zutaten'],
          //symptomeTotal: maps[i]['symptome']
      );
    });
  }

  //Aktualisiert einen Eintrag
  Future<void> updateMeal(mealData meal) async {
    final db = await database;
    await db.update(
      'meal',
      meal.toMap(),
      where: 'id = ?',
      whereArgs: [meal.gericht],
    );
  }

  //Löscht einen Eintrag
  Future<void> deleteMeal(int id) async {
    final db = await database;
    await db.delete(
      'meals',
      where: 'id = ?',
      whereArgs: [id],
    );
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
  // @override
  // void initState() {
  //   super.initState();
  //
  //   DatabaseHelper.instance.queryAllRows().then((value) {
  //     setState(() {
  //       value.forEach((element) {
  //         taskList.add(mealData(id: element['id'], gericht: element['gericht'], zutaten: element['zutaten'], symptomeTotal: element['symptome']));
  //       });
  //     });
  //   }).catchError((error) {
  //     print(error);
  //   });
  // }

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
