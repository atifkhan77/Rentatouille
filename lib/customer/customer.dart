import 'package:flutter/material.dart';
import 'package:rentatouille/constants/constants.dart';

class customer_screen extends StatefulWidget {
  const customer_screen({super.key});

  @override
  State<customer_screen> createState() => _customer_screenState();
}

class _customer_screenState extends State<customer_screen> {
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
