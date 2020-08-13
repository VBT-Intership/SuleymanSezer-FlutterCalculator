import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/custom_fab_button.dart';
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

  tiklandi(String entryNumber,
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
          firstNumber = calculateOperant
              .getCalculate(firstNumber, secondNumber)
              .toString();
          secondNumber = "";
          isTextEmpty = false;
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
                      tiklandi(TEXT_PLUS,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.PLUS);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.minus,
                    isIconAdded: true,
                    buttonOnClick: () {
                      tiklandi(TEXT_SUM,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.SUM);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.multiplication,
                    isIconAdded: true,
                    buttonOnClick: () {
                      tiklandi(TEXT_MULTIP, isCalcOperant: true);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.division,
                    isIconAdded: true,
                    buttonOnClick: () {
                      tiklandi(TEXT_DIV,
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
                      tiklandi(TEXT_SEVEN);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_EIGHT,
                    buttonOnClick: () {
                      tiklandi(TEXT_EIGHT);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_NINE,
                    buttonOnClick: () {
                      tiklandi(TEXT_NINE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.exponent,
                    isIconAdded: true,
                    buttonOnClick: () {
                      tiklandi(TEXT_EXPONENT,
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
                      tiklandi(TEXT_FOUR);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_FIVE,
                    buttonOnClick: () {
                      tiklandi(TEXT_FIVE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_SIX,
                    buttonOnClick: () {
                      tiklandi(TEXT_SIX);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.percent,
                    isIconAdded: true,
                    buttonOnClick: () {
                      tiklandi(TEXT_PERCENT,
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
                      tiklandi(TEXT_ONE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_TWO,
                    buttonOnClick: () {
                      tiklandi(TEXT_TWO);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_THREE,
                    buttonOnClick: () {
                      tiklandi(TEXT_THREE);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.delete,
                    isIconAdded: true,
                    buttonOnClick: () {
                      tiklandi(TEXT_DELETE_ALL,
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
                      tiklandi(TEXT_ZERO);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: TEXT_DOT,
                    buttonOnClick: () {
                      tiklandi(TEXT_DOT);
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_ORANGE_BD,
                    buttonSplashColor: BUTTON_ORANGE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.backspace,
                    isIconAdded: true,
                    buttonOnClick: () {
                      tiklandi(TEXT_REMOVE_LAST,
                          isCalcOperant: true,
                          clickOperant: CalculateOperant.REMOVE_LAST);
                    }),
                CustomFabButtons(
                  buttonBdColor: BUTTON_GREEN_BD,
                  buttonSplashColor: BUTTON_GREEN_SPLASH,
                  buttonText: TEXT_EQUAL,
                  buttonOnClick: () {
                    tiklandi(TEXT_DELETE_ALL,
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
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 24, right: 24),
            child: Text(widget.secondNumber,
                style: TextStyle(fontSize: 24, color: Colors.black45)),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 24, right: 24),
            child: Text(widget.firstNumber,
                style: TextStyle(fontSize: 72, color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
