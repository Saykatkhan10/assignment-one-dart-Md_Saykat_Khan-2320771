
String name = "John Doe";
int age = 25;
double height = 5.9;
bool isStudent = true;

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}


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