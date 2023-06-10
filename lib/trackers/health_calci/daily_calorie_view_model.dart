// import 'basal_metabolic_rate.dart';

import 'basal_metabolic_rate.dart';

List<int> gender = [1, 2, 3];
//male, female, others

double dailyCalorieIntake(
    double weight, double height, int age, int gender, int activity) {
  double dailyCalorieIntake = 0;
  double bmr = calculateBMR(gender, weight, height, age);

  switch (activity) {
    case 1:
      dailyCalorieIntake = bmr * 1.2;
      break;

    case 2:
      dailyCalorieIntake = bmr * 1.375;
      break;

    case 3:
      dailyCalorieIntake = bmr * 1.55;
      break;

    case 4:
      dailyCalorieIntake = bmr * 1.725;
      break;

    case 5:
      dailyCalorieIntake = bmr * 1.9;
      break;

    default:
  }
  return dailyCalorieIntake;
}
