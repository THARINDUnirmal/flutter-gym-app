import 'package:flutter/material.dart';
import 'package:gym_app/modles/exercise_modle.dart';
import 'package:gym_app/pages/utils/colors.dart';
import 'package:gym_app/widgets/navigation_card.dart';
import 'package:intl/intl.dart';

class ExercisesPage extends StatefulWidget {
  final String pageTitle;
  final String pageDescription;
  final List<dynamic> exList;

  const ExercisesPage({
    super.key,
    required this.pageTitle,
    required this.pageDescription,
    required this.exList,
  });

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  DateFormat dateFormat = DateFormat("EEEE, MMMM dd");
  @override
  Widget build(BuildContext context) {
    String nowDate = dateFormat.format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nowDate,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: ksubTopicColor,
              ),
            ),
            Text(
              widget.pageTitle,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.pageDescription,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: kpageDescTextColor,
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
                    childAspectRatio: (16 / 18)),
                scrollDirection: Axis.vertical,
                itemCount: widget.exList.length,
                itemBuilder: (context, index) {
                  ExerciseModle cardData = widget.exList[index];
                  return NavigationCard(
                      title: cardData.exerciseName,
                      imageUrl: cardData.exerciseImageUrl,
                      description: "${cardData.noOfMinuites} of workout");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
