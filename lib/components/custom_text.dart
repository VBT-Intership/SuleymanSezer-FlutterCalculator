import 'package:flutter/widgets.dart';

const double TEXT_TOPMARGIN_SIZE = 16;
const double TEXT_RIGHTMARGIN_SIZE = 24;
const double TEXT_SMALL_SIZE = 24;
const double TEXT_BIG_SIZE = 72;

class CustomText extends StatefulWidget {
  @override
  _CustomTextState createState() => _CustomTextState();

  CustomText(this.text, this.textColor, this.textSize);

  String text;
  Color textColor;
  double textSize;
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(
          top: TEXT_TOPMARGIN_SIZE, right: TEXT_RIGHTMARGIN_SIZE),
      child: Text(widget.text,
          style: TextStyle(fontSize: widget.textSize, color: widget.textColor)),
    );
  }
}
