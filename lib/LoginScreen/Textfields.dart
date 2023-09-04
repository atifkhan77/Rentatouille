import 'package:flutter/material.dart';

TextField reusableWidget(String text, IconData icon, bool ispasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: ispasswordType,
    enableSuggestions: !ispasswordType,
    autocorrect: !ispasswordType,
    cursorColor: Colors.white,
    style: TextStyle(
      color: Colors.white.withOpacity(0.9),
    ),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      hintText: text,
      labelStyle: TextStyle(
        color: Colors.white.withOpacity(0.9),
      ),
      filled: true,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
    keyboardType: ispasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
