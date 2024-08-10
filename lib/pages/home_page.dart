import 'package:flutter/material.dart';
import 'package:gym_app/data/exercise_data.dart';
import 'package:gym_app/data/user_data.dart';
import 'package:gym_app/pages/exercises_page.dart';
import 'package:gym_app/pages/utils/colors.dart';
import 'package:gym_app/widgets/navigation_card.dart';
import 'package:gym_app/widgets/progress_card.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //User Data
  final userData = user;

  //exercises data
  final exData = exercises;

  @override
  Widget build(BuildContext context) {
    DateFormat formatDay = DateFormat("EEEE, MMMM dd");

    String toDay = formatDay.format(
      DateTime.now(),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
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
                  "Helow, ${userData.fullName}",
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: kmainTopicColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProgressCard(
                  total: 100,
                  progress: 0.6,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Today’s Activity",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExercisesPage(
                                pageTitle: "Warmups",
                                pageDescription:
                                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                                exList: exercises),
                          ),
                        );
                      },
                      child: const NavigationCard(
                        title: "Warmup",
                        imageUrl: "assets/images/exercises/cobra.png",
                        description: "see more...",
                      ),
                    ),
                    const NavigationCard(
                      title: "Equipment",
                      imageUrl: "assets/images/equipments/dumbbells2.png",
                      description: "see more...",
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExercisesPage(
                                pageTitle: "Exercise",
                                pageDescription:
                                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                                exList: exercises),
                          ),
                        );
                      },
                      child: const NavigationCard(
                        title: "Exercise",
                        imageUrl: "assets/images/exercises/weightlifting.png",
                        description: "see more...",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExercisesPage(
                                pageTitle: "Stretching",
                                pageDescription:
                                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                                exList: exercises),
                          ),
                        );
                      },
                      child: const NavigationCard(
                        title: "Stretching",
                        imageUrl: "assets/images/exercises/yoga.png",
                        description: "see more...",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
