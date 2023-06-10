import 'package:flutter/rendering.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// BloodPressureResult

class BloodPressureResult {
  int? systolic;
  int? diastolic;

  BloodPressureResult({this.diastolic, this.systolic});
}

class BloodPressureCategory {
  String? name;
  String? description;

  BloodPressureCategory({this.description, this.name});
}

BloodPressureResult calculateBloodPressure(int systolic, int diastolic) {
  return BloodPressureResult(systolic: systolic, diastolic: diastolic);
}

BloodPressureCategory categorizedBloodPressure(BloodPressureResult result) {
  if (result.systolic! < 120 && result.diastolic! < 80) {
    return BloodPressureCategory(
        name: 'Normal',
        description: 'Your blood pressure is within the normal range');
  } else if (result.systolic! >= 120 &&
      result.systolic! <= 129 &&
      result.diastolic! >= 80) {
    return BloodPressureCategory(
        name: 'Elevated',
        description:
            'Your blood pressure is slightly above normal range and it is recommended to monitor it regularly');
  } else if (result.systolic! >= 130 &&
      result.systolic! <= 139 &&
      result.diastolic! >= 80 &&
      result.diastolic! <= 89) {
    return BloodPressureCategory(
        name: 'Hypertension Stage 1 range',
        description:
            'Your blood pressure is in the hypertension stage 1 range. It is adviced to take steps to manage and reduce it.');
  } else if (result.systolic! >= 140 &&
      result.systolic! <= 180 &&
      result.diastolic! >= 90 &&
      result.diastolic! <= 120) {
    return BloodPressureCategory(
        name: 'Hypertension Stage 2 range',
        description:
            'Your blood pressure is in the hypertension stage 2 range. It is important to consult doctor and take measures.');
  } else {
    return BloodPressureCategory(
        name: 'Hypertensive Crisis',
        description: 'Your blood pressure is hypertensive crisis range. Immediate medical attention is required.');
  }
}
// 

