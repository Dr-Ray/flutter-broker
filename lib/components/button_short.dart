import 'package:flutter/material.dart';

class MyShortButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color bgColor;
  final Color textColor;

  const MyShortButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.onTap,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        width: 200,
        height: 70,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(100)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
