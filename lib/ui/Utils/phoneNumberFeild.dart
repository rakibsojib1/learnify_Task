import 'package:flutter/material.dart';

Row phoneNumberFeild(String selectedCountry, void Function(String) onCountryChanged) {
  return Row(
    children: [
      // Country code dropdown
      const SizedBox(width: 8),
      DropdownButton<String>(
        value: selectedCountry,
        onChanged: (String? newValue) {
          onCountryChanged(newValue!); // Call the callback function
        },
        items: <String>['+880', '+91']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        underline: Container(),
        focusColor: Colors.white, 
      ),
      const SizedBox(width: 10),

      // Phone number input
      Expanded(
        child: TextFormField(
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            hintText: 'Enter your phone number',
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}
