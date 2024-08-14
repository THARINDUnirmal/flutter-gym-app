import 'package:gym_app/modles/equipment_modle.dart';
import 'package:gym_app/modles/exercise_modle.dart';

class User {
  final String userId;
  final String fullName;
  final int age;
  final String gender;
  final String address;
  final String description;
  int totlaExercisesCompleted;
  int totlaEquipmentHandedOver;
  final List<ExerciseModle> exerciseList;
  final List<ExerciseModle> favouritExerciseList;
  final List<EquipmentModle> equipmentList;
  final List<EquipmentModle> favEquipmentList;

  User({
    required this.totlaExercisesCompleted,
    required this.totlaEquipmentHandedOver,
    required this.userId,
    required this.fullName,
    required this.age,
    required this.gender,
    required this.address,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
    required this.favouritExerciseList,
    required this.favEquipmentList,
  });

  //methords add Exercise

  void addExercise(ExerciseModle exe) {
    exerciseList.add(exe);
  }

  //methord remove data

  void removeExercise(ExerciseModle exeReomove) {
    exerciseList.remove(exeReomove);
  }

  //add favoirit

  void addFavourit(ExerciseModle exercise) {
    favouritExerciseList.add(exercise);
  }

  //remove favourit

  void removeFavourit(ExerciseModle exFav) {
    favouritExerciseList.remove(exFav);
  }

  //add Equipment in list

  void addEquipmentData(EquipmentModle equipmentData) {
    equipmentList.add(equipmentData);
  }

  //remove Equipment in list

  void removeEquipmenData(EquipmentModle equipmentData) {
    equipmentList.remove(equipmentData);
  }

  //add to favourit Equipment

  void addFavouritEquipment(EquipmentModle equipmentData) {
    favEquipmentList.add(equipmentData);
  }

  //remove to favourit Equipment

  void removeFavouritEquipment(EquipmentModle equipmentData) {
    favEquipmentList.remove(equipmentData);
  }

  //calculate total spend minuites

  int calculateNoOfMinuites() {
    int total = 0;
    for (var i in exerciseList) {
      total += i.noOfMinuites;
    }

    //Equipment total spend minuites
    for (var a in equipmentList) {
      total += a.noOfMinuites;
    }
    return total;
  }

  //progress calculation
  double progressValue() {
    double totalCalarise = 0;

    for (var calarise in equipmentList) {
      totalCalarise += calarise.noOfCalories;
    }

    if (totalCalarise > 0 && totalCalarise <= 10) {
      totalCalarise = totalCalarise / 10; //example: 5 -- 5/10= 0.5
    }

    if (totalCalarise > 0 && totalCalarise <= 100) {
      totalCalarise = totalCalarise / 100; //example: 10 -- 10/100= 0.1
    }

    if (totalCalarise > 0 && totalCalarise <= 1000) {
      totalCalarise = totalCalarise / 1000; // example: 300 -- 150/1000=0.3
    }
    return totalCalarise;
  }
}
