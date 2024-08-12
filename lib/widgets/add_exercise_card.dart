import 'package:flutter/material.dart';
import 'package:gym_app/utils/colors.dart';

class AddExerciseCard extends StatefulWidget {
  final String cardTitle;
  final String cardImageUrl;
  final bool isAdded;
  final void Function() addMethord;

  const AddExerciseCard({
    super.key,
    required this.cardTitle,
    required this.cardImageUrl,
    required this.isAdded,
    required this.addMethord,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kEquipmentCardFilltColor,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.cardTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            widget.cardImageUrl,
            width: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 41, 222, 242),
                  ),
                  child: IconButton(
                    onPressed: () {
                      widget.addMethord();
                    },
                    icon: widget.isAdded
                        ? const Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(56, 78, 79, 82),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.pink,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
