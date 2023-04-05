import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() press;
  final Color? color, textColor;
  final double? width;
  final double containerHorizontal;
  final double buttonHorizontal;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color,
      this.textColor = Colors.white,
      this.width,
      this.containerHorizontal = 0.0,
      this.buttonHorizontal = 40.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: 15, horizontal: containerHorizontal),
      width: width,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        child: roundButton(),
      ),
    );
  }

  Widget roundButton() {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 2,
        padding: EdgeInsets.symmetric(
          horizontal: buttonHorizontal,
          vertical: 20,
        ),
        textStyle: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 15),
      ),
    );
  }
}
