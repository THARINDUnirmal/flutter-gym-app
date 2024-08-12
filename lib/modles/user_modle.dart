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
  final List<ExerciseModle> favExerciseList;
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
    required this.favExerciseList,
    required this.favEquipmentList,
  });

  //methords add Exercise

  void addExercise(ExerciseModle exe) {
    exerciseList.add(exe);
  }
}
