import 'package:flutter/material.dart';

import '../ui/Utils/textStyle.dart';

class ComonElButton extends StatelessWidget {
  const ComonElButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,

          backgroundColor: Colors.red, // Text color
          padding: const EdgeInsets.all(16.0), // Button padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
            // Button border radius
          ),
        ),
        child: Text(title, style: screenTItleTextStyle),
      ),
    );
  }
}
