import 'package:flutter/material.dart';
import 'package:portfolio/components/big_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: 300,
                  child: Text(
                    "10:40",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    BigIcon(
                      borderRadius: 30,
                      iconName: "Photos",
                    ),
                    BigIcon(
                      borderRadius: 30,
                      iconName: "Calender",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    BigIcon(
                      borderRadius: 15,
                      iconName: "Photos",
                    ),
                    BigIcon(
                      borderRadius: 15,
                      iconName: "Calender",
                    ),
                    BigIcon(
                      borderRadius: 15,
                      iconName: "Calender",
                    ),
                    BigIcon(
                      borderRadius: 15,
                      iconName: "Calender",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
