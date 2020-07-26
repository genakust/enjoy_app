import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import 'dart:async';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
}

//   String kDatabaseName = 'yoga_db.db';

//   // Open the database and store the reference.
//   final Future<Database> database = openDatabase(
//     // Set the path to the database. Note: Using the `join` function from the
//     // `path` package is best practice to ensure the path is correctly
//     // constructed for each platform.
//     join(await getDatabasesPath(), kDatabaseName),
//   );

//   // create a database
//   final Future<Database> database = openDatabase(
//   // Set the path to the database.
//   join(await getDatabasesPath(), kDatabaseName),
//   // When the database is first created, create a table to store dogs.
//   onCreate: (db, version) {
//     // Run the CREATE TABLE statement on the database.
//     return db.execute(
//       "CREATE TABLE yoga_poses(id INTEGER PRIMARY KEY, name TEXT, description Text, picture Text, duration REAL)",
//     );
//   },
//   // Set the version. This executes the onCreate function and provides a
//   // path to perform database upgrades and downgrades.
//   version: 1,
// );
