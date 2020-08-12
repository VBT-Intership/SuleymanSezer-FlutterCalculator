import 'package:flutter/material.dart';

const double BUTTON_ELEVATION = 2;
const double BUTTON_MIN_SIZE = 60;

class CustomFabButtons extends StatefulWidget {
  CustomFabButtons(
      {@required this.buttonBdColor,
      @required this.buttonSplashColor,
      this.buttonIcon,
      this.buttonText,
      @required this.isIconAdded,
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
        style: TextStyle(fontSize: 20),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        fillColor: widget.buttonBdColor,
        child: getWidget(),
        elevation: BUTTON_ELEVATION,
        splashColor: widget.buttonSplashColor,
        constraints: BoxConstraints(
            minWidth: BUTTON_MIN_SIZE, minHeight: BUTTON_MIN_SIZE),
        shape: CircleBorder(),
        onPressed: widget.buttonOnClick,
      ),
    );
  }
}
