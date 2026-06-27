
import 'dart:math';

void main() {
  
  List<String> studentNames = [
    "Alice",
    "Bob",
    "Charlie",
    "Diana",
    "Eve"
  ];

  
  Map<String, int> studentScores = {};

  Random random = Random();

  
  for (String student in studentNames) {
    studentScores[student] = 60 + random.nextInt(41);
  }

  String highestStudent = "";
  int highestScore = 0;

  String lowestStudent = "";
  int lowestScore = 101;

  int total = 0;

  
  studentScores.forEach((student, score) {
    total += score;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  });

  double averageScore = total / studentScores.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}");

  
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;

      case 8:
        category = "Good";
        break;

      case 7:
        category = "Average";
        break;

      default:
        category = "Needs Improvement";
    }

    print("$student: $score ($category)");
  }
}