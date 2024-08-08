class ExerciseModle {
  final int id;
  final String exerciseName;
  final String exerciseImageUrl;
  final int noOfMinuites;
  bool completed;

  ExerciseModle({
    required this.id,
    required this.exerciseName,
    required this.exerciseImageUrl,
    required this.noOfMinuites,
    required this.completed,
  });
}
