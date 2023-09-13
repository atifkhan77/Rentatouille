import 'package:flutter/material.dart';
import 'package:rentatouille/constants/constants.dart';
import 'package:rentatouille/screens/signup/signupScreen.dart';
import 'package:rentatouille/widgets/Textfields.dart';
import 'package:rentatouille/screens/LoginScreen/signInButtons.dart';

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
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        width: width * 1,
        height: height * 1,
        decoration: const BoxDecoration(
          gradient: themColor,
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
              const SizedBox(height: 20),
              reusableWidget("Enter UserName", Icons.person_outline, false,
                  _emailController),
              const SizedBox(height: 20),
              reusableWidget("Enter Password", Icons.lock_outline, true,
                  _passwordController),
              const SizedBox(height: 20),
              signInButton(context, true, () {}),
              const SizedBox(
                height: 10,
              ),
              SignUpOption(),
            ]),
          ),
        ),
      ),
    );
  }

  Row SignUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Not registered yet? ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignUpScreen(),
              ),
            );
          },
          child: const Text(
            'Register Now',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
