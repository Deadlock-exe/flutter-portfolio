import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          "MY PROJECTS",
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
