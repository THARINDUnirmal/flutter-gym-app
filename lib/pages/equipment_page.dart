import 'package:flutter/material.dart';
import 'package:gym_app/data/equipment_data.dart';
import 'package:gym_app/modles/equipment_modle.dart';
import 'package:gym_app/pages/utils/colors.dart';
import 'package:gym_app/widgets/equipment_card.dart';
import 'package:intl/intl.dart';

class EquipmentPage extends StatefulWidget {
  final String title;
  final String description;
  final List<EquipmentModle> equipmentList;

  const EquipmentPage({
    super.key,
    required this.title,
    required this.description,
    required this.equipmentList,
  });

  @override
  State<EquipmentPage> createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  DateFormat formatter = DateFormat("EEEE,MMMM,dd");

  @override
  Widget build(BuildContext context) {
    String nowDay = formatter.format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              nowDay,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: ksubTopicColor,
              ),
            ),
            Text(
              widget.title,
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
                widget.description,
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
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: (15 / 14)),
                itemCount: equipmentList.length,
                itemBuilder: (context, index) {
                  dynamic eData = equipmentList[index];
                  return EquipmentCard(
                    equipmentCardTitle: eData.equipmentName,
                    equipmentImageUrl: eData.equipmentImageUrl,
                    equipmentData: eData.equipmentDescription,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
