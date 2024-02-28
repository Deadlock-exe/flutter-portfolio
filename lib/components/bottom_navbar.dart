import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.white,
      activeColor: Colors.white,
      tabBackgroundColor: Colors.grey.shade900,
      gap: 8,
      padding: const EdgeInsets.all(15),
      tabs: const [
        GButton(
          icon: Icons.home,
          text: "HOME",
        ),
        GButton(
          icon: Icons.person,
          text: "ABOUT",
        ),
        GButton(
          icon: Icons.work,
          text: "PROJECTS",
        ),
        GButton(
          icon: Icons.message_sharp,
          text: "CONTACT",
        ),
      ],
    );
  }
}
