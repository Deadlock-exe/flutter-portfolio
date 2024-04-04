import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/lock_screen.dart';
import 'package:portfolio/pages/projects_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
      builder: (context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: MainPage(),
        home: LockScreen(),
      ),
      maximumSize: const Size(520, 520),
      enabled: kIsWeb,
      backgroundColor: Colors.black,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const AboutPage(),
    const ProjectsPage(),
    const ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: navigateBottomBar,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade900,
          gap: 8,
          padding: const EdgeInsets.all(15),
          tabs: [
            GButton(
              leading: Image.asset(
                'assets/images/home.png',
                fit: BoxFit.cover,
                width: 23,
                height: 23,
              ),
              icon: Icons.home,
              text: "HOME",
            ),
            GButton(
              leading: Image.asset(
                'assets/images/user.png',
                fit: BoxFit.cover,
                width: 23,
                height: 23,
              ),
              icon: Icons.person,
              text: "ABOUT",
            ),
            GButton(
              leading: Image.asset(
                'assets/images/project.png',
                fit: BoxFit.cover,
                width: 23,
                height: 23,
              ),
              icon: Icons.work,
              text: "PROJECTS",
            ),
            GButton(
              leading: Image.asset(
                'assets/images/message.png',
                fit: BoxFit.cover,
                width: 23,
                height: 18,
              ),
              icon: Icons.message_sharp,
              text: "CONTACT",
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        toolbarHeight: 25,
        title: const Text(""),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
