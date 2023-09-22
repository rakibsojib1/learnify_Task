import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widgets/PinCodeFeild.dart';
import '../../Widgets/TearmsAndConditions.dart';
import '../../Widgets/comonElbutton.dart';
import '../Utils/app_colors.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "OTP Verify",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 60),
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(height: 40),
              const Text(
                'OTP sent to',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
              const Text(
                '+91 12344567899',
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
              const SizedBox(height: 24),
              const PinCodeFeild(),
              const SizedBox(height: 16),
              ComonElButton(
                title: 'Verify OTP',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Message"),
                        content:
                            const Text("Your details have been submitted."),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Get.back(); // Close the dialog
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 13, color: softGreyColor),
                  text: 'This code will be expire in ',
                  children: [
                    TextSpan(
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.w600),
                      text: '120s',
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                  style: TextStyle(color: greyColor.withOpacity(0.5)),
                ),
              ),
              const SizedBox(height: 10),
              const TearmsandConditions()
            ],
          ),
        ),
      ),
    );
  }
}
