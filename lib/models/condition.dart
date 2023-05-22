// da modificare
class Condition {
  final int? stepsForUnlock;
  final int? distForUnlock;
  final List<double>? positionForUnlock;

  Condition(int this.stepsForUnlock, int this.distForUnlock,
      List<double> this.positionForUnlock) {
    print("These are the conditions you set to unlock it");
    print("steps: $stepsForUnlock");
    print("distance:  $distForUnlock");
    print("gps position: $positionForUnlock");
  }
}