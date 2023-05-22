import 'package:floor/floor.dart';
import 'package:achivements/models/singleAchive.dart';
@dao
abstract class SingleAchive_dao {
  @Query('SELECT * FROM SingleAchive')
  Future<List<SingleAchive>> findAllAchieve();

  @Query('SELECT name FROM SingleAchive')
  Stream<List<String>> findAllAchieveName();

  @Query('SELECT * FROM SingleAchive WHERE id = :id')
  Stream<SingleAchive?> findAchieveById(int id);

  @Query('DELETE FROM SingleAchive WHERE id = :id') 
  Future<void> deleteAchieveById(int id);

  @insert
  Future<void> insertAchive(SingleAchive singleAchive);
}