import 'package:floor/floor.dart';

//THis class extends ChangeNotifier. It will act as data repository to be shared thorugh the application.
@entity
class Profile { // -> non può estendere changeNotifier
  
  @primaryKey
  int id = new DateTime.now().millisecondsSinceEpoch;
  
  //var achievements = new Achievements();    -> Non si può fare perchè Achievements contiene delle List e il database rompe il cazzo

  int steps = 0;
  int distance = 0;
  int co2 = 0;
  double XcurrentPosition = 0;  // -> nemmeno il tipo num si può usare 
  double YcurrentPosition = 0;

  Profile(
    int this.id,
    int this.steps,
    int this.distance,
    int this.co2,
    double this.XcurrentPosition,
    double this.YcurrentPosition,
  ){}
}
