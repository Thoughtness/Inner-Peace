// import 'package:inner_peace/mealData.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'mealData.dart';
//
// class DatabaseHelper{
//   static final _databaseName = "innerPeace.db";
//   static final _databaseVersion = 1;
//
//   static final table = 'recordMeal';
//
//   static final columnId = 'id';
//   static final columnTitle = 'title';
//
//   DatabaseHelper._privateConstructor();
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//
//   static Database? _database;
//   Future<Database> get database async =>
//       _database ??= await _initDatabase();
//   }
//
//   Future<Database> _initDatabase() async {
//
//     String path = join(await getDatabasesPath(), _databaseName);
//     return await openDatabase(path,
//         version: _databaseVersion, onCreate: _onCreate);
//   }
//
//   // SQL code to create the database table
//   Future _onCreate(Database db, int version) async {
//     await db.execute('''
//           CREATE TABLE $table (
//             $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
//             $columnTitle FLOAT NOT NULL
//           )
//           ''');
//   }
//
//   Future<int> insert(mealData todo) async {
//     Database db = await instance.database;
//     var res = await db.insert(table, mealData.toMap());
//     return res;
//   }
//
//   Future<List<Map<String, dynamic>>> queryAllRows() async {
//     Database db = await instance.database;
//     var res = await db.query(table, orderBy: "$columnId DESC");
//     return res;
//   }
//
//   Future<int> delete(int id) async {
//     Database db = await instance.database;
//     return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
//   }
//
//   Future<void> clearTable() async {
//     Database db = await instance.database;
//     return await db.rawQuery("DELETE FROM $table");
//   }
// }