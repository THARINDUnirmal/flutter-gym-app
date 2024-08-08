import 'package:gym_app/modles/equipment_modle.dart';

class EquipmentData {
  final List<EquipmentModle> equipmentList = [
    EquipmentModle(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/calendar.png",
      noOfMinuites: 30,
      noOfCalories: 2,
      handOvered: false,
    ),
    EquipmentModle(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/images/equipments/checklist.png",
      noOfMinuites: 20,
      handOvered: false,
      noOfCalories: 15,
    ),
    EquipmentModle(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 60,
      handOvered: false,
      noOfCalories: 30,
    ),
    EquipmentModle(
      id: 3,
      equipmentName: "Jump Rope",
      equipmentDescription:
          "A rope used for cardiovascular exercises and coordination training.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinuites: 15,
      handOvered: false,
      noOfCalories: 12,
    ),
    EquipmentModle(
      id: 4,
      equipmentName: "Kettlebells",
      equipmentDescription:
          "Weights with a handle used for strength, endurance, and flexibility training.",
      equipmentImageUrl: "assets/images/equipments/facial-roller.png",
      noOfMinuites: 45,
      handOvered: false,
      noOfCalories: 25,
    ),
    EquipmentModle(
      id: 5,
      equipmentName: "Exercise Ball",
      equipmentDescription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImageUrl: "assets/images/equipments/stationary-bike.png",
      noOfMinuites: 25,
      handOvered: false,
      noOfCalories: 15,
    ),
    EquipmentModle(
      id: 6,
      equipmentName: "Pull-up Bar",
      equipmentDescription:
          "A bar mounted to a wall or doorframe for upper body strength exercises.",
      equipmentImageUrl: "assets/images/equipments/treadmill.png",
      noOfMinuites: 40,
      handOvered: false,
      noOfCalories: 20,
    ),
    EquipmentModle(
      id: 7,
      equipmentName: "Medicine Ball",
      equipmentDescription:
          "A heavy ball used for strength and coordination exercises.",
      equipmentImageUrl: "assets/images/equipments/facial-roller.png",
      noOfMinuites: 35,
      handOvered: false,
      noOfCalories: 18,
    ),
    EquipmentModle(
      id: 8,
      equipmentName: "Bench",
      equipmentDescription:
          "A stable surface for various strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinuites: 55,
      handOvered: false,
      noOfCalories: 28,
    ),
    EquipmentModle(
      id: 9,
      equipmentName: "Barbell",
      equipmentDescription:
          "A long metal bar with weights attached to each end, used for resistance training.",
      equipmentImageUrl: "assets/images/equipments/skipping-rope.png",
      noOfMinuites: 50,
      handOvered: false,
      noOfCalories: 27,
    ),
  ];
}
