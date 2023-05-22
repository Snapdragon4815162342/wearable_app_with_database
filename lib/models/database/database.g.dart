// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  SingleAchive_dao? _singleAchive_daoInstance;

  Luogo_dao? _luogo_daoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Profile` (`id` INTEGER NOT NULL, `steps` INTEGER NOT NULL, `distance` INTEGER NOT NULL, `co2` INTEGER NOT NULL, `XcurrentPosition` REAL NOT NULL, `YcurrentPosition` REAL NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SingleAchive` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `stepsForUnlock` INTEGER NOT NULL, `distForUnlock` INTEGER NOT NULL, `XpositionForUnlock` REAL NOT NULL, `YpositionForUnlock` REAL NOT NULL, `isUnlocked` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Luogo` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `descrizione` TEXT NOT NULL, `visitato` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  SingleAchive_dao get singleAchive_dao {
    return _singleAchive_daoInstance ??=
        _$SingleAchive_dao(database, changeListener);
  }

  @override
  Luogo_dao get luogo_dao {
    return _luogo_daoInstance ??= _$Luogo_dao(database, changeListener);
  }
  
  @override
  // TODO: implement profile_dao
  Profile_dao get profile_dao => throw UnimplementedError();
}

class _$SingleAchive_dao extends SingleAchive_dao {
  _$SingleAchive_dao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _singleAchiveInsertionAdapter = InsertionAdapter(
            database,
            'SingleAchive',
            (SingleAchive item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'stepsForUnlock': item.stepsForUnlock,
                  'distForUnlock': item.distForUnlock,
                  'XpositionForUnlock': item.XpositionForUnlock,
                  'YpositionForUnlock': item.YpositionForUnlock,
                  'isUnlocked': item.isUnlocked ? 1 : 0
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SingleAchive> _singleAchiveInsertionAdapter;

  @override
  Future<List<SingleAchive>> findAllAchieve() async {
    return _queryAdapter.queryList('SELECT * FROM SingleAchive',
        mapper: (Map<String, Object?> row) => SingleAchive(
            row['name'] as String,
            row['stepsForUnlock'] as int,
            row['distForUnlock'] as int,
            row['XpositionForUnlock'] as double,
            row['YpositionForUnlock'] as double));
  }

  @override
  Stream<List<String>> findAllAchieveName() {
    return _queryAdapter.queryListStream('SELECT name FROM SingleAchive',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        queryableName: 'SingleAchive',
        isView: false);
  }

  @override
  Stream<SingleAchive?> findAchieveById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM SingleAchive WHERE id = ?1',
        mapper: (Map<String, Object?> row) => SingleAchive(
            row['name'] as String,
            row['stepsForUnlock'] as int,
            row['distForUnlock'] as int,
            row['XpositionForUnlock'] as double,
            row['YpositionForUnlock'] as double),
        arguments: [id],
        queryableName: 'SingleAchive',
        isView: false);
  }

  @override
  Future<void> deleteAchieveById(int id) async {
    await _queryAdapter.queryNoReturn('DELETE FROM SingleAchive WHERE id = ?1',
        arguments: [id]);
  }

  @override
  Future<void> insertAchive(SingleAchive singleAchive) async {
    await _singleAchiveInsertionAdapter.insert(
        singleAchive, OnConflictStrategy.abort);
  }
}

class _$Luogo_dao extends Luogo_dao {
  _$Luogo_dao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _luogoInsertionAdapter = InsertionAdapter(
            database,
            'Luogo',
            (Luogo item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'descrizione': item.descrizione,
                  'visitato': item.visitato ? 1 : 0
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Luogo> _luogoInsertionAdapter;

  @override
  Future<List<Luogo>> findAllLuogo() async {
    return _queryAdapter.queryList('SELECT * FROM Luogo',
        mapper: (Map<String, Object?> row) =>
            Luogo(row['name'] as String, row['descrizione'] as String));
  }

  @override
  Stream<List<String>> findAllLuogoName() {
    return _queryAdapter.queryListStream('SELECT name FROM Luogo',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        queryableName: 'Luogo',
        isView: false);
  }

  @override
  Stream<Luogo?> findLuogoById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Luogo WHERE id = ?1',
        mapper: (Map<String, Object?> row) =>
            Luogo(row['name'] as String, row['descrizione'] as String),
        arguments: [id],
        queryableName: 'Luogo',
        isView: false);
  }

  @override
  Future<void> deleteLuogoById(int id) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM Luogo_item WHERE id = ?1', arguments: [id]);
  }

  @override
  Future<void> insertLuogo(Luogo luogo) async {
    await _luogoInsertionAdapter.insert(luogo, OnConflictStrategy.abort);
  }
}
