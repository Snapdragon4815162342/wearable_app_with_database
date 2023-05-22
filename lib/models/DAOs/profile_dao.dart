import 'package:floor/floor.dart';
import 'package:achivements/models/profile.dart';
@dao
abstract class Profile_dao {
  @Query('SELECT * FROM Profile')
  Future<List<Profile>> findAllProfile();

  @Query('SELECT name FROM Profile')
  Stream<List<String>> findAllProfileName();

  @Query('SELECT * FROM Profile WHERE id = :id')
  Stream<Profile?> findProfileById(int id);

  @Query('DELETE FROM Profile WHERE id = :id') 
  Future<void> deleteProfileById(int id);

  @insert
  Future<void> insertProfile(Profile profile);
}