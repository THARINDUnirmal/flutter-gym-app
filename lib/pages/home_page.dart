import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateFormat formatDay = DateFormat("EEEE,MMMM,dd");

    String toDay = formatDay.format(
      DateTime.now(),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                toDay,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
