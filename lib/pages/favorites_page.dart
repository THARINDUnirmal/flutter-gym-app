import 'package:flutter/material.dart';
import 'package:gym_app/data/user_data.dart';
import 'package:gym_app/modles/equipment_modle.dart';
import 'package:gym_app/modles/exercise_modle.dart';
import 'package:gym_app/modles/user_modle.dart';
import 'package:gym_app/utils/colors.dart';
import 'package:intl/intl.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  //user data
  final User userData = user;
  DateFormat formater = DateFormat("EEEE,MMMM,dd");
  @override
  Widget build(BuildContext context) {
    String toDay = formater.format(DateTime.now());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  toDay,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: ksubTopicColor,
                  ),
                ),
                Text(
                  "Hello, ${userData.fullName}",
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
                  "Here are all your favorited Workouts",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: knavCardDescTextColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Favourit Exercises",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 16 / 18,
                  ),
                  itemCount: userData.favouritExerciseList.length,
                  itemBuilder: (context, index) {
                    ExerciseModle exerciseData =
                        userData.favouritExerciseList[index];
                    return Card(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            exerciseData.exerciseName,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            exerciseData.exerciseImageUrl,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${exerciseData.noOfMinuites} Min",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: knavCardDescTextColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Favourit Equipments",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 17 / 21,
                  ),
                  itemCount: userData.favEquipmentList.length,
                  itemBuilder: (context, index) {
                    EquipmentModle equipmentData =
                        userData.favEquipmentList[index];
                    return Card(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            equipmentData.equipmentName,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            equipmentData.equipmentImageUrl,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Time:${equipmentData.noOfMinuites} Min and \n ${equipmentData.noOfCalories} cal,",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: knavCardDescTextColor),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
