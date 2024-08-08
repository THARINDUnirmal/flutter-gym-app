import 'package:gym_app/modles/exercise_modle.dart';

class ExerciseData {
  final List<ExerciseModle> exercises = [
    ExerciseModle(
      exerciseName: "Push-ups",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinuites: 15,
      id: 0,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinuites: 20,
      id: 1,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Plank",
      exerciseImageUrl: "assets/images/exercises/dragging.png",
      noOfMinuites: 30,
      id: 2,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Jumping Jacks",
      exerciseImageUrl: "assets/images/exercises/hunch_back.png",
      noOfMinuites: 10,
      completed: false,
      id: 3,
    ),
    ExerciseModle(
      exerciseName: "Crunches",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_men.png",
      noOfMinuites: 15,
      id: 4,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Lunges",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_women.png",
      noOfMinuites: 20,
      id: 5,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Burpees",
      exerciseImageUrl: "assets/images/exercises/triangle.png",
      noOfMinuites: 25,
      id: 6,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "High Knees",
      exerciseImageUrl: "assets/images/exercises/weightlifting.png",
      noOfMinuites: 10,
      id: 7,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Bicycle Crunches",
      exerciseImageUrl: "assets/images/exercises/yoga.png",
      noOfMinuites: 20,
      id: 8,
      completed: false,
    ),
    ExerciseModle(
      exerciseName: "Leg Raises",
      exerciseImageUrl: "assets/images/exercises/triangle.png",
      noOfMinuites: 15,
      id: 9,
      completed: false,
    )
  ];
}
