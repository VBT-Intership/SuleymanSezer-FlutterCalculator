import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/custom_fab_button.dart';
import 'package:flutter_calculator/components/custom_text.dart';
import 'package:flutter_calculator/enums/calculate_operant_enums.dart';
import 'package:flutter_calculator/utilites/strings.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'utilites/colors.dart';
import 'utilites/tools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String firstNumber = "";
  String secondNumber = "";
  CalculateOperant calculateOperant;
  bool isTextEmpty = true;

  clicked(String entryNumber,
      {isCalcOperant = false, CalculateOperant clickOperant}) {
    setState(() {
      if (!isCalcOperant) {
        if (!isTextEmpty) {
          firstNumber = "";
          isTextEmpty = true;
        }
        firstNumber = "$firstNumber$entryNumber";
      } else {
        if (clickOperant == CalculateOperant.EQUALS) {
          if (firstNumber.isNotEmpty && secondNumber.isNotEmpty) {
            firstNumber =
                calculateOperant.getCalculate(firstNumber, secondNumber);
            secondNumber = "";
            isTextEmpty = false;
          }
        } else if (clickOperant == CalculateOperant.DELETE_ALL) {
          firstNumber = "";
          secondNumber = "";
        } else if (clickOperant == CalculateOperant.REMOVE_LAST) {
          if (firstNumber.isNotEmpty)
            firstNumber = firstNumber.substring(0, firstNumber.length - 1);
        } else if (clickOperant == CalculateOperant.SUM) {
          if (!firstNumber.isNotEmpty) {
            firstNumber = "$firstNumber$entryNumber";
          }
        } else {
          calculateOperant = clickOperant;
          secondNumber = firstNumber;
          firstNumber = "";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TopScreenText(firstNumber, secondNumber),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.plus,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_PLUS,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.PLUS);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.minus,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_SUM,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.SUM);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.multiplication,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_MULTIP,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.MULTIP);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.division,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_DIV,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.DIVIDE);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_SEVEN,
                    buttonOnClick: () {
                      clicked(TEXT_SEVEN);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_EIGHT,
                    buttonOnClick: () {
                      clicked(TEXT_EIGHT);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_NINE,
                    buttonOnClick: () {
                      clicked(TEXT_NINE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.exponent,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_EXPONENT,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.EXPONENT);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_FOUR,
                    buttonOnClick: () {
                      clicked(TEXT_FOUR);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_FIVE,
                    buttonOnClick: () {
                      clicked(TEXT_FIVE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_SIX,
                    buttonOnClick: () {
                      clicked(TEXT_SIX);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.percent,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_PERCENT,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.PERCENT);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_ONE,
                    buttonOnClick: () {
                      clicked(TEXT_ONE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_TWO,
                    buttonOnClick: () {
                      clicked(TEXT_TWO);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_THREE,
                    buttonOnClick: () {
                      clicked(TEXT_THREE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.delete,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_DELETE_ALL,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.DELETE_ALL);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_ZERO,
                    buttonOnClick: () {
                      clicked(TEXT_ZERO);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_DOT,
                    buttonOnClick: () {
                      clicked(TEXT_DOT);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_ORANGE_BD,
                    buttonSplashColor: BUTTON_ORANGE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.backspace,
                    isIconAdded: true,
                    buttonOnClick: () {
                      clicked(TEXT_REMOVE_LAST,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.REMOVE_LAST);
                    }),
                CustomFabButtons(
                  buttonBdColor: BUTTON_GREEN_BD,
                  buttonSplashColor: BUTTON_GREEN_SPLASH,
                  buttonText: TEXT_EQUAL,
                  buttonOnClick: () {
                    clicked(TEXT_DELETE_ALL,
                        isCalcOperant: true,
                        clickOperant: CalculateOperant.EQUALS);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TopScreenText extends StatefulWidget {
  @override
  _TopScreenTextState createState() => _TopScreenTextState();

  TopScreenText(this.firstNumber, this.secondNumber);

  String firstNumber, secondNumber;
}

class _TopScreenTextState extends State<TopScreenText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          CustomText(widget.secondNumber + "", Colors.black45, TEXT_SMALL_SIZE),
          CustomText(widget.firstNumber + "", Colors.black54, TEXT_BIG_SIZE)
        ],
      ),
    );
  }
}
