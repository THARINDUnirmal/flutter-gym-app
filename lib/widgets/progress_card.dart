import 'package:flutter/material.dart';
import 'package:gym_app/pages/utils/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progress;
  final int total;
  const ProgressCard({
    super.key,
    required this.progress,
    required this.total,
  });
  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progress * widget.total).toInt();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            klinerGredientColor1,
            klinerGredientColor2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Proteins, Fats & Carbohydrates",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: kmainWhiteColor,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              smallCard(
                name: "Done",
                value: done.toString(),
              ),
              smallCard(
                name: "Total",
                value: widget.total.toString(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            backgroundColor: kmainBlueColor,
            minHeight: 10.0,
            borderRadius: BorderRadius.circular(20),
            color: kmainWhiteColor,
            value: widget.progress,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget smallCard({required String name, required String value}) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: kmainWhiteColor,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: kmainWhiteColor,
          ),
        ),
      ],
    );
  }
}
