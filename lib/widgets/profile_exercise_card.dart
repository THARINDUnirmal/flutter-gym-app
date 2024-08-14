import 'package:flutter/material.dart';
import 'package:gym_app/utils/colors.dart';

class ProfileExerciseCard extends StatefulWidget {
  final String cardImageUrl;
  final String cardName;
  final void Function() removeData;

  const ProfileExerciseCard({
    super.key,
    required this.cardImageUrl,
    required this.cardName,
    required this.removeData,
  });

  @override
  State<ProfileExerciseCard> createState() => _ProfileExerciseCardState();
}

class _ProfileExerciseCardState extends State<ProfileExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kEquipmentCardFilltColor,
      ),
      child: Row(
        children: [
          Image.asset(
            widget.cardImageUrl,
            width: 70,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.cardName,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                widget.removeData();
              },
              icon: const Icon(
                Icons.mark_chat_read,
                size: 30,
              ))
        ],
      ),
    );
  }
}
