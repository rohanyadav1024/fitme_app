import 'dart:html';

String categorizeBloodSugar(double bloodSugar) {
  if (bloodSugar < 70) {
    return 'low';
  } else if (bloodSugar <= 140) {
    return 'normal';
  } else {
    return 'high';
  }
}

double convertMgdlToMmol(double mgdlValue) {
  return mgdlValue / 18.018;
}
