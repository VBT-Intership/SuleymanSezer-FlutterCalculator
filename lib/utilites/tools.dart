import 'dart:math' as Math;

import 'package:flutter_calculator/enums/calculate_operant_enums.dart';

extension GetCalculate on CalculateOperant {
  double getCalculate(String num1, String num2) {
    double nm1 = double.parse(num1);
    double nm2 = double.parse(num2);
    double result;
    switch (this) {
      case CalculateOperant.PLUS:
        result = nm2 + nm1;
        break;
      case CalculateOperant.SUM:
        result = nm2 - nm1;
        break;
      case CalculateOperant.MULTIP:
        result = nm2 * nm1;
        break;
      case CalculateOperant.DIVIDE:
        result = nm2 / nm1;
        break;
      case CalculateOperant.EXPONENT:
        result = Math.pow(nm2, nm1);
        break;
      case CalculateOperant.PERCENT:
        result = nm2 % nm1;
        break;
      case CalculateOperant.DELETE_ALL:
        break;
      case CalculateOperant.REMOVE_LAST:
        break;
      case CalculateOperant.EQUALS:
        break;
    }
    return double.parse(result.toStringAsFixed(6));
  }
}
