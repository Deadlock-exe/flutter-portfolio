import 'package:flutter/material.dart';
import 'package:portfolio/components/expanded_container.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "ABOUT ME",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 40,
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Web Development Skills",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17,
                    letterSpacing: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Image.asset(
                    "assets/images/webdev.png",
                    height: 130,
                  ),
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        ExpandedContainer(text: "HTML"),
                        ExpandedContainer(text: "CSS"),
                        ExpandedContainer(text: "Javascript"),
                      ],
                    ),
                    Row(
                      children: [
                        ExpandedContainer(text: "Bootstrap"),
                        ExpandedContainer(text: "Tailwind"),
                        ExpandedContainer(text: "ReactJS"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "App Development Skills",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17,
                    letterSpacing: 1,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                      ),
                      child: Image.asset(
                        "assets/images/appdev.png",
                        height: 130,
                      ),
                    ),
                    const Row(
                      children: [
                        ExpandedContainer(text: "Flutter"),
                        ExpandedContainer(text: "Dart"),
                        ExpandedContainer(text: "Firebase"),
                      ],
                    ),
                    const Row(
                      children: [
                        ExpandedContainer(text: "Supabase"),
                        ExpandedContainer(text: "SQLite"),
                        ExpandedContainer(text: "NoSQL DB"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Design Skills",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17,
                    letterSpacing: 1,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                      ),
                      child: Image.asset(
                        "assets/images/design.png",
                        height: 130,
                      ),
                    ),
                    const Row(
                      children: [
                        ExpandedContainer(text: "Canva"),
                        ExpandedContainer(text: "Figma"),
                        ExpandedContainer(text: "FinalCut Pro"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
