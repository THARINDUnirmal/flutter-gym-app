import 'package:flutter/material.dart';
import 'package:gym_app/data/user_data.dart';
import 'package:gym_app/pages/utils/colors.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //User Data
  final userData = user;

  @override
  Widget build(BuildContext context) {
    DateFormat formatDay = DateFormat("EEEE, MMMM dd");

    String toDay = formatDay.format(
      DateTime.now(),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                toDay,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: subTopicColor,
                ),
              ),
              Text(
                userData.fullName,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: mainTopicColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
