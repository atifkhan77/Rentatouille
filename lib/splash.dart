import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              image: const DecorationImage(
                image: NetworkImage('lib/assets/splash.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  },
}
