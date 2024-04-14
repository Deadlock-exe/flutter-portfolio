import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:portfolio/components/appdev_projects.dart';
import 'package:portfolio/components/webdev_projects.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "MY PROJECTS",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "Web Development Projects",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "(swipe to see more)",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 270,
            child: CardSwiper(
              cardsCount: webdev.length,
              cardBuilder:
                  (context, index, percentThresholdX, percentThresholdY) =>
                      webdev[index],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "App Development Projects",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "(swipe to see more)",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 400,
            child: CardSwiper(
              cardsCount: appdev.length,
              cardBuilder:
                  (context, index, percentThresholdX, percentThresholdY) =>
                      appdev[index],
            ),
          ),
        ],
      ),
    );
  }
}
