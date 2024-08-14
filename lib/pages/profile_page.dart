import 'package:flutter/material.dart';
import 'package:gym_app/data/user_data.dart';
import 'package:gym_app/modles/equipment_modle.dart';
import 'package:gym_app/modles/exercise_modle.dart';
import 'package:gym_app/modles/user_modle.dart';
import 'package:gym_app/utils/colors.dart';
import 'package:gym_app/widgets/profile_exercise_card.dart';
import 'package:gym_app/widgets/progress_card.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                const ProgressCard(
                  progress: 0.5,
                  total: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kEquipmentCardFilltColor,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total minuites Spend :50",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: klinerGredientColor2,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Total Exercises completed :5",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Total Equipments completed :5",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Added Exercises",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: user.exerciseList.length,
                  itemBuilder: (context, index) {
                    ExerciseModle exData = user.exerciseList[index];
                    return ProfileExerciseCard(
                      cardImageUrl: exData.exerciseImageUrl,
                      cardName: exData.exerciseName,
                      removeData: () {
                        setState(() {
                          user.removeExercise(exData);
                        });
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Added Equipments",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: user.equipmentList.length,
                  itemBuilder: (context, index) {
                    EquipmentModle eqData = user.equipmentList[index];
                    return ProfileExerciseCard(
                      cardImageUrl: eqData.equipmentImageUrl,
                      cardName: eqData.equipmentName,
                      removeData: () {
                        setState(() {
                          user.removeEquipmenData(eqData);
                        });
                      },
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
