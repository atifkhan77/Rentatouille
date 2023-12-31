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
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
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
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width * 1,
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.black26;
                      }
                      return Colors.white;
                    }),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Login as Seller",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
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
    //for making code easily understandable
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
                builder: (context) => const SignUpScreen(),
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
