import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnify/Widgets/comonElbutton.dart';
import '../../Widgets/TearmsAndConditions.dart';
import '../Utils/phoneNumberFeild.dart';
import 'otp_verify_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = '+91';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 const SizedBox(height: 65),
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(height: 100),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(32)),
                  child: phoneNumberFeild(selectedCountry, (value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  }),
                ),
                const SizedBox(height: 44),
                ComonElButton(
                    title: "Log in",
                    onTap: () {
                      Get.to(const OTPVerificationScreen());
                    }),
                const SizedBox(height: 44),
                const TearmsandConditions()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
