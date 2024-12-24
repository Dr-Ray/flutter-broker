import 'package:flutter/material.dart';

class MyButtonWithIcon extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color bgColor;
  final Color textColor;
  final Icon myIcon;

  const MyButtonWithIcon({
    super.key,
    required this.text,
    required this.textColor,
    required this.onTap,
    required this.bgColor,
    required this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 60,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            myIcon,
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
