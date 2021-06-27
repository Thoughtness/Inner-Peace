// import 'dart:async';
// import 'package:sqflite/sqflite.dart';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
//
// // ignore: camel_case_types
// class databaseHelpers {
//   static databaseHelpers? _databaseHelpers;
//
//   databaseHelpers._createInstance();
//
//   factory databaseHelpers(){
//     if (_databaseHelpers == null) {
//       _databaseHelpers = databaseHelpers._createInstance();
//     }
//     return _databaseHelpers;
//   }
//
//   initializeDatabase() async{
//     Directory directory = await getApplicationDocumentsDirectory();
//     String path = directory.path + 'notes.db';
//
//     var notesDatabase = await openDatabase(path, version: 1, onCreate:  _createDb);
//     return notesDatabase;
//   }
//
//   void _createDb(Database db, int newVersion) async {
//     await db.execute('CREATE TABLE')
//   }
// }