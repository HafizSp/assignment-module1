void main() {
  List<int> grades = [85, 92, 78, 65, 88, 7];
  int sum = 0;
  for (int i = 0; i < grades.length; i++) {
    sum += grades[i];
  }

  double average = sum / grades.length;
  print("Student's average grade: ${average.toStringAsFixed(1)}");
  int roundAverage = average.round();
  print("Rounded average: $roundAverage");

  if (roundAverage >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
