import 'package:flutter/material.dart';
import 'package:rentatouille/LoginScreen/login.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 550,
              width: 420,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
                color: Colors.grey,
                image: const DecorationImage(
                  image: NetworkImage(
                      "C:\Users\M.Atif\Documents\Provider\Rentatouille\rentatouille\images\splash.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  width: 0,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(140),
                  bottomRight: Radius.circular(140),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
