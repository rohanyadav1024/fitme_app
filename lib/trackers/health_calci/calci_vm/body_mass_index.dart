import 'dart:math';

double calculateBMI(double weight, bool cm, bool lbs, double height) {
  if (cm) {
    height = height / 100;
  }

  if (lbs) {
    weight /= 2.205;
  }

  double bmi = weight / pow(height, 2);

  return bmi;
}
