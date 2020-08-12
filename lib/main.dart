import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/custom_fab_button.dart';
import 'package:flutter_icons/flutter_icons.dart';

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

const Color BUTTON_BLUE_BD = Color(0xFFE7F3FE);
const Color BUTTON_GRAY_BD = Colors.white60;
const Color BUTTON_RED_BD = Color(0xFFFFE7EB);
const Color BUTTON_ORANGE_BD = Color(0xFFFFF7E9);
const Color BUTTON_GREEN_BD = Color(0xFFE7FBEB);

const Color BUTTON_WHITE_SPLASH = Colors.white;
const Color BUTTON_BLUE_SPLASH = Colors.lightBlue;
const Color BUTTON_RED_SPLASH = Colors.red;
const Color BUTTON_ORANGE_SPLASH = Color(0xFFf7ca7e);
const Color BUTTON_GREEN_SPLASH = Colors.greenAccent;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  tiklandi() {
    setState(() {
      print("tiklandi");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TopScreenText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.plus,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.minus,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.multiplication,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_BLUE_BD,
                    buttonSplashColor: BUTTON_BLUE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.division,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '7',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '8',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '9',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.exponent,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '4',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '5',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '6',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.percent,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '1',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '2',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '3',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_RED_BD,
                    buttonSplashColor: BUTTON_RED_SPLASH,
                    buttonIcon: MaterialCommunityIcons.delete,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '0',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GRAY_BD,
                    buttonSplashColor: BUTTON_WHITE_SPLASH,
                    buttonText: '.',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_ORANGE_BD,
                    buttonSplashColor: BUTTON_ORANGE_SPLASH,
                    buttonIcon: MaterialCommunityIcons.backspace,
                    isIconAdded: true,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    }),
                CustomFabButtons(
                    buttonBdColor: BUTTON_GREEN_BD,
                    buttonSplashColor: BUTTON_GREEN_SPLASH,
                    buttonText: '=',
                    isIconAdded: false,
                    buttonOnClick: () {
                      setState(() {
                        tiklandi();
                      });
                    })
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
            child: Text('52 x 23',
                style: TextStyle(fontSize: 24, color: Colors.black38)),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 24, right: 24),
            child: Text('425',
                style: TextStyle(fontSize: 72, color: Colors.black38)),
          ),
        ],
      ),
    );
  }
}
