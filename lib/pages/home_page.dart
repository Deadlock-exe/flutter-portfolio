import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          "HOMEPAGE",
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
