// import 'package:flutter/material.dart';
// import 'package:inner_peace/Pages/navigationMenu.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:inner_peace/mealData.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart';
//
// // ignore: camel_case_types
// class databaseHelper{
//   Database? database;
//
//   Future open() async {
//     database = await openDatabase(
//       //  by default path for database on the device is /data/data/<your app id>/databases/<your database file.db>
//         join(await getDatabasesPath(), 'ofs_sms_database.db'),
//         version: 1, onCreate: (Database database, int version) async {
//       await database.execute(
//           "CREATE TABLE smslogs(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, employeeID TEXT, department TEXT, module TEXT, message TEXT, safeUnsafeStatus TEXT, contactNo Text, dateTime INTEGER)");
//     });
//   }
//
//   Future<void> insertMeals(mealData meal) async {
//     await database?.insert(
//       'meal',
//       meal.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }
//
//
//
//
//   //Fügt eine Mahlzeit hinzu
//   Future<void> insertMeal(mealData meal) async {
//     //call(mealData meal) async {
//     final db = await database;
//     await db?.insert(
//       'meals',
//       meal.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//     //}
//   }
//
//   //holt alle Mahlzeiten von dessen Tabelle
//   Future<List<mealData>> meals() async {
//     final db = database;
//     final List<Map<String, dynamic>> maps = await db.query('meals');
//     return List.generate(maps.length, (i) {
//       return mealData(
//         //id: maps[i]['id'],
//         meal: maps[i]['meal'],
//         ingredients: maps[i]['ingredients'],
//         symptomTotal: maps[i]['symptomTotal'],
//         generalWellbeing: maps[i]['generalWellbeing'],
//         cramps: maps[i]['cramps'],
//         flatulence: maps[i]['flatulence'],
//         bowel: maps[i]['bowel'],
//       );
//     });
//   }
//
//   //Aktualisiert einen Eintrag
//   Future<void> updateMeal(mealData mealUpdate) async {
//     final db = await database;
//     await db?.update(
//       'meal',
//       mealUpdate.toMap(),
//       where: 'id = ?',
//       whereArgs: [mealUpdate.meal],
//     );
//   }
//
//   //Löscht einen Eintrag
//   Future<void> deleteMeal(int id) async {
//     final db = await database;
//     await db?.delete(
//       'meals',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }
// }