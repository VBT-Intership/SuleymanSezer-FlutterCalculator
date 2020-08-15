import 'dart:math' as Math;

import 'package:flutter_calculator/enums/calculate_operant_enums.dart';

extension GetCalculate on CalculateOperant {
  String getCalculate(String num1, String num2) {
    double nm1 = double.parse(num1);
    double nm2 = double.parse(num2);
    bool isPercent = false;
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
        isPercent = true;
        break;
      case CalculateOperant.DELETE_ALL:
        break;
      case CalculateOperant.REMOVE_LAST:
        break;
      case CalculateOperant.EQUALS:
        break;
      case CalculateOperant.DOT:
        break;
    }

    if (isPercent)
      return result.toString();
    else
      return resultSplit(result);
  }
}

String resultSplit(double result) {
  List<String> splited = result.toString().split('.');
  String dotBefore = splited[0];
  String dotAfter = splited[1];

  String willReturn;

  double isZero = double.parse(dotAfter);
  if (isZero == 0)
    willReturn = dotBefore;
  else
    willReturn = result.toStringAsFixed(6);

  return deleteZero(willReturn);
}

String deleteZero(String value) {
  if (value[value.length - 1] == "0") {
    bool birOncekiSifirMi = true;
    bool sifirdanFarkliMi = false;
    int sifirinSonKonumu = value.length - 1;
    int indis = value.length - 1;

    while (!sifirdanFarkliMi) {
      if (value[indis] == "0") {
        if (birOncekiSifirMi) {
          sifirinSonKonumu = indis;
        }
        birOncekiSifirMi = true;
      } else {
        birOncekiSifirMi = false;
        sifirdanFarkliMi = true;
      }
      indis--;
    }
    return value.substring(0, sifirinSonKonumu);
  } else
    return value;
}
