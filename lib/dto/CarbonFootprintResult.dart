import 'dart:ffi';
import 'dart:ffi';

class CarbonFootprintResult {
  late String distanceByVehical;
  late String walking;
  late String garbage;
  late String electricity;
  late String finalResult;

  CarbonFootprintResult(
      {required this.distanceByVehical,
      required this.electricity,
      required this.garbage,
      required this.walking,
      required this.finalResult});

  String getDistanceByVehical() {
    return distanceByVehical;
  }

  void setDistanceByVehical(String distanceByVehical) {
    this.distanceByVehical = distanceByVehical;
  }

  String getWalking() {
    return walking;
  }

  void setWalking(String walking) {
    this.walking = walking;
  }

  String getGarbage() {
    return garbage;
  }

  void setGarbage(String garbage) {
    this.garbage = garbage;
  }

  String getElectricity() {
    return electricity;
  }

  void setElectricity(String electricity) {
    this.electricity = electricity;
  }

  String getFinalResult() {
    return finalResult;
  }

  void setFinalResult(String finalResult) {
    this.finalResult = finalResult;
  }

  factory CarbonFootprintResult.fromJson(Map<String, dynamic> parsedJson) {
    return CarbonFootprintResult(
        distanceByVehical: parsedJson['distanceByVehical'].toString(),
        walking: parsedJson['walking'].toString(),
        garbage: parsedJson['garbage'].toString(),
        electricity: parsedJson['electricity'].toString(),
        finalResult: parsedJson['finalResult'].toString());
  }
}
