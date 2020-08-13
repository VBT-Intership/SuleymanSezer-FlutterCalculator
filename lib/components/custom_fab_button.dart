import 'package:flutter/material.dart';

const double BUTTON_ELEVATION = 2;
const double BUTTON_MIN_SIZE = 70;
const double BUTTON_TEXT_SIZE = 20;

class CustomFabButtons extends StatefulWidget {
  CustomFabButtons(
      {@required this.buttonBdColor,
      @required this.buttonSplashColor,
      this.buttonIcon,
      this.buttonText,
      this.isIconAdded = false,
      @required this.buttonOnClick});

  final Color buttonBdColor;
  final Color buttonSplashColor;
  final IconData buttonIcon;
  final String buttonText;
  final Function buttonOnClick;
  final bool isIconAdded;

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<CustomFabButtons> {
  Widget getWidget() {
    if (widget.isIconAdded)
      return Icon(widget.buttonIcon, color: widget.buttonSplashColor);
    else
      return Text(
        widget.buttonText,
        style: TextStyle(fontSize: BUTTON_TEXT_SIZE),
      );
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: widget.buttonBdColor,
      child: getWidget(),
      elevation: BUTTON_ELEVATION,
      highlightColor: widget.buttonBdColor,
      splashColor: widget.buttonSplashColor,
      constraints:
      BoxConstraints(minWidth: BUTTON_MIN_SIZE, minHeight: BUTTON_MIN_SIZE),
      shape: CircleBorder(),
      onPressed: () {
        setState(() {
          widget.buttonOnClick();
        });
      },
    );
  }
}
