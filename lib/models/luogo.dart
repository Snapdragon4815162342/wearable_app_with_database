import 'package:floor/floor.dart';


@entity
class Luogo {
  @primaryKey
  int id = new DateTime.now().millisecondsSinceEpoch;
  String name = "";
  String descrizione = "";
  bool visitato = false; 

  Luogo (String this.name, this.descrizione){}

}