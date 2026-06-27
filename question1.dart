// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/**
 * EXPECTED OUTPUT:
 * Name: John Doe, Age: 25, Height: 5.9, Is Student: true
 * BMI: 22.5
 * Grade: B
 */

// 1. Create variables of different data types: String, int, double, bool
String name = "John Doe";
int age = 25;
double height = 5.9;
bool isStudent = true;

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String)
String getGrade(int score) {
  if (score >= 90) {
    return "A";
  } else if (score >= 80) {
    return "B";
  } else if (score >= 70) {
    return "C";
  } else if (score >= 60) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  // BMI = 22.5
  double bmi = calculateBMI(72.9, 1.8);

  // Grade = B
  String grade = getGrade(85);

  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: ${bmi.toStringAsFixed(1)}");
  print("Grade: $grade");
}