import 'package:flutter/material.dart';
import 'package:rentatouille/LoginScreen/Textfields.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      body: Container(
        width: width * 1,
        height: height * 1,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple, Colors.pink],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, height * 0.2, 20, 0),
            child: Column(children: [
              Image.asset(
                'images/house.png',
                fit: BoxFit.fitWidth,
                width: 240,
                height: 240,
                color: Colors.white,
              ),
              const SizedBox(height: 30),
              reusableWidget("Enter UserName", Icons.person_outline, false,
                  _emailController),
              const SizedBox(height: 30),
              reusableWidget("Enter Password", Icons.lock_outline, false,
                  _passwordController),
            ]),
          ),
        ),
      ),
    );
  }
}
