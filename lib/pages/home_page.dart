import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "HOMEPAGE",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth < 800 ? 10 : 40,
            vertical: 40,
          ),
          child: Column(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2500),
                  child: Image.asset(
                    "assets/images/trial.png",
                    height: screenWidth > 400 ? 320 : screenWidth - 50,
                    width: screenWidth > 400 ? 320 : screenWidth - 50,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  "Hey! I'm Aditya",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 19,
                  ),
                ),
              ),
              Text(
                "Frontend WebDev",
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
              Text(
                "Fullstack AppDev and",
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
              Text(
                "Occasional Graphic Designer",
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/code.png",
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Driven and Dedicated, I am constantly striving to reach New Heights in all aspects of my Life. My Relentless Work Ethic and Eagerness to take on new challenges have led me to Success, and I am always seeking out the next Big Opportunity.",
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
