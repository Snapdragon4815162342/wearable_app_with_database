import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:achivements/models/DAOs/luogo_dao.dart';
import 'package:achivements/models/DAOs/Profile_dao.dart';
import 'package:achivements/models/DAOs/singleAchive_dao.dart';

import 'package:achivements/models/luogo.dart';
import 'package:achivements/models/profile.dart';
import 'package:achivements/models/singleAchive.dart';

part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Profile, SingleAchive, Luogo])
abstract class AppDatabase extends FloorDatabase {

  Profile_dao get profile_dao;
  SingleAchive_dao get singleAchive_dao;
  Luogo_dao get  luogo_dao;

}