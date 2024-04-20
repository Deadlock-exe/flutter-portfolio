import 'package:flutter/material.dart';
import 'package:portfolio/util/url_launcher.dart';

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
            vertical: 20,
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
                "Programmer",
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 15,
                  letterSpacing: 1,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    final Uri url = Uri.parse(
                        'https://drive.google.com/file/d/1Y_66_P5uF3_BwPzXHowsHEXPIjnfvUf5/view');
                    launchMyUrl(url);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 25,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Resume ->",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/code.png",
                height: 250,
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Driven and Dedicated, I am constantly striving to reach New Heights in all aspects of my Life. My Relentless Work Ethic and Eagerness to take on new challenges have led me to Success, and I am always seeking out the next Big Opportunity.",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
