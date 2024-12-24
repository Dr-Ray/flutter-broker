import 'package:flutter/material.dart';
import 'package:stockswave/components/button.dart';
import 'package:stockswave/components/button_with_icon.dart';
import 'package:stockswave/components/text_input.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      MyInputField(
                          controller: userNameController,
                          hintText: "Username",
                          obscureText: false),
                      const SizedBox(
                        height: 30,
                      ),
                      MyInputField(
                          controller: emailController,
                          hintText: "Email",
                          obscureText: false),
                      const SizedBox(
                        height: 30,
                      ),
                      MyInputField(
                          controller: passwordController,
                          hintText: "Password",
                          obscureText: true),
                      const SizedBox(
                        height: 30,
                      ),
                      MyButton(
                          text: "Login",
                          onTap: () {},
                          textColor: const Color(0xFFFFFFFF),
                          bgColor: const Color(0xFF1659E8)),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "I agree to all terms, privacy policy and conditions",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MyButtonWithIcon(
                          text: "Continue with Apple",
                          textColor: Colors.white,
                          onTap: () {},
                          bgColor: const Color.fromARGB(255, 71, 63, 80),
                          myIcon: const Icon(
                            Icons.apple_sharp,
                            size: 30,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      MyButtonWithIcon(
                          text: "Continue with Google",
                          textColor: Colors.black,
                          onTap: () {},
                          bgColor: Colors.white,
                          myIcon: const Icon(
                            Icons.mail_lock_sharp,
                            size: 30,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      MyButtonWithIcon(
                          text: "Continue with Facebook",
                          textColor: Colors.white,
                          onTap: () {},
                          bgColor: const Color(0xFF1659E8),
                          myIcon: const Icon(
                            Icons.facebook_sharp,
                            size: 30,
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
