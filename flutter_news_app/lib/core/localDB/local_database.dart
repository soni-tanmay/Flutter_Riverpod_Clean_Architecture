import "package:flutter_news_app/core/models/news/news.dart";
import "package:path/path.dart";
import "package:sqflite/sqflite.dart";

class LocalDatabase {
  static final LocalDatabase instance = LocalDatabase._internal();

  static Database? _database;

  LocalDatabase._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "news.db");
    return openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, _) async {
    return await db.execute("""
        CREATE TABLE newsTable (
         id TEXT PRIMARY KEY, 
         title TEXT, 
         link TEXT,
         description TEXT,
         pubDate TEXT,
         language TEXT
        )
      """);
  }

  Future<void> insert(Results article) async {
    final db = await instance.database;

    await db.insert("newsTable", {
      "id": article.title?.length,
      "title": article.title,
      "link": article.link,
      "description": article.description,
      "pubDate": article.pubDate,
      "language": article.language,
    });
  }

  Future<List<Results>> readAll() async {
    final db = await instance.database;
    final result = await db.query("newsTable");
    return result.map(Results.fromJson).toList();
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(
      "newsTable",
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<void> close() async {
    final db = await instance.database;
    await db.close();
  }
}
