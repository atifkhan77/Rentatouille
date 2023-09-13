import 'package:flutter/material.dart';
import 'package:rentatouille/constants/constants.dart';
import 'package:rentatouille/screens/LoginScreen/signInButtons.dart';
import 'package:rentatouille/widgets/Textfields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up"),
      ),
      body: Container(
        height: height * 1,
        width: width * 1,
        decoration: const BoxDecoration(
          gradient: themColor,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, height * 0.2, 20, 0),
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              reusableWidget(
                  "Enter name", Icons.person_outline, false, _nameController),
              const SizedBox(height: 20),
              reusableWidget("Enter Email Id", Icons.email_outlined, false,
                  _emailController),
              const SizedBox(height: 20),
              reusableWidget(
                  "password", Icons.lock_outline, true, _passwordController),
              const SizedBox(height: 20),
              reusableWidget("confirm password", Icons.lock_outline, true,
                  _passwordController),
              const SizedBox(height: 40),
              signInButton(context, false, () {}),
            ]),
          ),
        ),
      ),
    );
  }
}
