import 'package:flutter/material.dart';
import 'package:gym_app/pages/utils/colors.dart';

class NavigationCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const NavigationCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: knavCardBgColor,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            imageUrl,
            width: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: knavCardDescTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
