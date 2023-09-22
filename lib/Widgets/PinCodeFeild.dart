import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeFeild extends StatelessWidget {
  const PinCodeFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      controller: TextEditingController(),
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(12),
          fieldHeight: 45,
          fieldWidth: 65,
          activeFillColor: Colors.white,
          selectedFillColor: Colors.white,
          selectedColor: Colors.grey,
          inactiveColor: Colors.grey,
          inactiveFillColor: Colors.white),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      onCompleted: (v) {},
      onChanged: (value) {},
      appContext: context,
    );
  }
}