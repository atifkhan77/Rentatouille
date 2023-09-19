import 'package:flutter/material.dart';
import 'package:rentatouille/constants/constants.dart';

class seller_screen extends StatefulWidget {
  const seller_screen({super.key});

  @override
  State<seller_screen> createState() => _seller_screenState();
}

class _seller_screenState extends State<seller_screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: height * 1,
        width: width * 1,
        decoration: const BoxDecoration(
          gradient: themColor,
        ),
      ),
    );
  }
}
