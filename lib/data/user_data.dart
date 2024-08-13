import 'package:gym_app/modles/equipment_modle.dart';
import 'package:gym_app/modles/exercise_modle.dart';
import 'package:gym_app/modles/user_modle.dart';

User user = User(
  userId: "123456",
  fullName: "John Doe",
  age: 30,
  gender: "Male",
  address: "123 Main St, City, Country",
  description: "Fitness enthusiast",
  totlaExercisesCompleted: 0,
  totlaEquipmentHandedOver: 0,
  exerciseList: [
    ExerciseModle(
      exerciseName: "Push-ups",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinuites: 15,
      id: 0,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinuites: 20,
      id: 1,
      completed: false,
    ),
  ],
  equipmentList: [
    EquipmentModle(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/images/equipments/checklist.png",
      noOfMinuites: 20,
      handOvered: false,
      noOfCalories: 150,
    ),
    EquipmentModle(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 60,
      handOvered: false,
      noOfCalories: 300,
    ),
  ],
  favouritExerciseList: [
    ExerciseModle(
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinuites: 20,
      id: 1,
      completed: false,
    ),
  ],
  favEquipmentList: [
    EquipmentModle(
      id: 3,
      equipmentName: "Dumbbells",
      equipmentDescription: "Weights used for strength training.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 30,
      handOvered: false,
      noOfCalories: 200,
    ),
  ],
);
