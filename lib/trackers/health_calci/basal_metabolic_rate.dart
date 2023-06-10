List<int> gender = [1, 2, 3];

double calculateBMR(int gender, double weight, double height, int age) {
  double bmr;

  if (gender == 1) {
    bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
  } else
    bmr = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);

  return bmr;
}
