import 'package:floor/floor.dart';


@entity
class SingleAchive {
  @primaryKey
  int id = new DateTime.now().millisecondsSinceEpoch;
  String name;
  int stepsForUnlock;
  int distForUnlock;
  //List<double> positionForUnlock;
  double XpositionForUnlock;
  double YpositionForUnlock;
  bool isUnlocked = false;
  
  
  

  SingleAchive(
    String this.name, 
    int this.stepsForUnlock,
    int this.distForUnlock, 
    double this.XpositionForUnlock, 
    double this.YpositionForUnlock) {

      // print("You create new object of type SingleAchieve");
      // print("Name: $name");
      // print("These are the conditions you set to unlock it");
      // print("steps: $stepsForUnlock");
      // print("distance:  $distForUnlock");
      // print("gps position: $XpositionForUnlock , $YpositionForUnlock");
    }

  // bool checkForAchieveUnlocked(
  //   int actualSteps, 
  //   int actualDist, 
  //   num XactualPosition,
  //   num YactualPosition, 
  //   ) {
  //     List <num> positionForUnlockList = [XpositionForUnlock, YpositionForUnlock];

  //     bool verifySteps = (actualSteps >= stepsForUnlock);
  //     bool verifyDist = (actualDist >= distForUnlock);
  //     bool verifyPosition = ((XactualPosition == XpositionForUnlock) && (YactualPosition == YpositionForUnlock));
  //     isUnlocked = verifySteps & verifyDist & verifyPosition;

  //     return isUnlocked;
  //   }


}
