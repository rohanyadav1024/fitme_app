double calculateBAC(
    double alcoholConsumed, double bodyWeight, double widmarkFactor) {
  double bac = (alcoholConsumed / (bodyWeight * widmarkFactor)) * 100;
  return bac;
}
