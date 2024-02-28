import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          "ABOUT ME",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
