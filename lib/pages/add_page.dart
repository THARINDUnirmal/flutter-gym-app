import 'package:flutter/material.dart';
import 'package:gym_app/data/exercise_data.dart';
import 'package:gym_app/data/user_data.dart';
import 'package:gym_app/modles/exercise_modle.dart';
import 'package:gym_app/utils/colors.dart';
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
            child: SingleChildScrollView(
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
                    height: 245,
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: exercises.length,
                      itemBuilder: (context, index) {
                        ExerciseModle exerciseData = exercises[index];
                        return AddExerciseCard(
                          cardTitle: exerciseData.exerciseName,
                          cardImageUrl: exerciseData.exerciseImageUrl,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
