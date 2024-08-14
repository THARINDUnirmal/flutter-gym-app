import 'package:flutter/material.dart';
import 'package:gym_app/data/equipment_data.dart';
import 'package:gym_app/data/exercise_data.dart';
import 'package:gym_app/data/user_data.dart';
import 'package:gym_app/modles/equipment_modle.dart';
import 'package:gym_app/modles/exercise_modle.dart';
import 'package:gym_app/utils/colors.dart';
import 'package:gym_app/widgets/add_equipment_card.dart';
import 'package:gym_app/widgets/add_exercise_card.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${user.fullName}",
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: kmainTopicColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Lets Add Some Workouts and Equipment for today!",
                  style: TextStyle(
                    fontSize: 16,
                    color: kEquipmentCardBlueTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "All Exercises",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 290,
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: exercises.length,
                    itemBuilder: (context, index) {
                      ExerciseModle exerciseData = exercises[index];
                      return AddExerciseCard(
                        noOfMinuites: exerciseData.noOfMinuites.toString(),
                        addFavourit: () {
                          setState(() {
                            if (user.favouritExerciseList
                                .contains(exerciseData)) {
                              user.removeFavourit(exerciseData);
                            } else {
                              user.addFavourit(exerciseData);
                            }
                          });
                        },
                        addMethord: () {
                          setState(() {
                            if (user.exerciseList.contains(exerciseData)) {
                              user.removeExercise(exerciseData);
                            } else {
                              user.addExercise(exerciseData);
                            }
                          });
                        },
                        isInFav:
                            user.favouritExerciseList.contains(exerciseData),
                        isAdded: user.exerciseList.contains(exerciseData),
                        cardTitle: exerciseData.exerciseName,
                        cardImageUrl: exerciseData.exerciseImageUrl,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "All Equipment",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: equipmentList.length,
                    itemBuilder: (context, index) {
                      EquipmentModle equipmenData = equipmentList[index];
                      return AddEquipmentCard(
                        addEquipment: () {
                          setState(() {
                            if (user.equipmentList.contains(equipmenData)) {
                              user.removeEquipmenData(equipmenData);
                            } else {
                              user.addEquipmentData(equipmenData);
                            }
                          });
                        },
                        addFavouritEquipment: () {
                          setState(() {
                            if (user.favEquipmentList.contains(equipmenData)) {
                              user.removeFavouritEquipment(equipmenData);
                            } else {
                              user.addFavouritEquipment(equipmenData);
                            }
                          });
                        },
                        isFavouritEquipment:
                            user.favEquipmentList.contains(equipmenData),
                        isAddEquipment:
                            user.equipmentList.contains(equipmenData),
                        equipmentName: equipmenData.equipmentName,
                        equipmentDescription: equipmenData.equipmentDescription,
                        equipmentImage: equipmenData.equipmentImageUrl,
                        numberOfMuinits: equipmenData.noOfMinuites,
                        numberOfCal: equipmenData.noOfCalories,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
