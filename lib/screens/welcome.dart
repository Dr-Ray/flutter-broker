import 'package:flutter/material.dart';
import 'package:stockswave/components/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Welcome Text
              const Text(
                "Join the Trading Community, \n Start Investing \n Today",
                style: TextStyle(fontSize: 47, color: Colors.white),
              ),

              Column(
                children: [
                  // Login Button
                  MyButton(
                      onTap: () {},
                      text: "Login",
                      bgColor: const Color(0xFF1659E8),
                      textColor: const Color(0xFFFFFFFF)),

                  const SizedBox(height: 20),

                  // Sign up Button
                  MyButton(
                      onTap: () {},
                      text: "Sign Up",
                      textColor: const Color(0xFFFFFFFF),
                      bgColor: const Color(0xFF12B76A))
                ],
              )
            ],
          ),
        ));
  }
}
