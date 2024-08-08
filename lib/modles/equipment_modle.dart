class EquipmentModle {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final double noOfCalories;
  bool handOvered;

  EquipmentModle({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfMinuites,
    required this.noOfCalories,
    required this.handOvered,
  });
}
