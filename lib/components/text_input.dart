import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const MyInputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}
