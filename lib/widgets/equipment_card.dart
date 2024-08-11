import 'package:flutter/material.dart';
import 'package:gym_app/utils/colors.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentCardTitle;
  final String equipmentImageUrl;
  final String equipmentData;

  const EquipmentCard({
    super.key,
    required this.equipmentCardTitle,
    required this.equipmentImageUrl,
    required this.equipmentData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kEquipmentCardFilltColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            equipmentCardTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  equipmentImageUrl,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    equipmentData,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: kEquipmentCardBlueTextColor),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
            style: TextStyle(
              fontSize: 15,
              color: ksubTopicColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
