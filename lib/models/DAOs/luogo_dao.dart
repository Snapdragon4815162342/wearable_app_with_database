import 'package:floor/floor.dart';
import 'package:achivements/models/luogo.dart';
@dao
abstract class Luogo_dao {
  @Query('SELECT * FROM Luogo')
  Future<List<Luogo>> findAllLuogo();

  @Query('SELECT name FROM Luogo')
  Stream<List<String>> findAllLuogoName();

  @Query('SELECT * FROM Luogo WHERE id = :id')
  Stream<Luogo?> findLuogoById(int id);

  @Query('DELETE FROM Luogo_item WHERE id = :id') 
  Future<void> deleteLuogoById(int id);

  @insert
  Future<void> insertLuogo(Luogo luogo);
}