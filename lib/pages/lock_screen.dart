import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/main.dart';
import 'package:slide_to_act/slide_to_act.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDay = DateFormat('EEEE').format(now);
    String formattedDate = DateFormat('MMMM d').format(now);
    String formattedTime = DateFormat.Hm().format(now);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            Text(
              "$formattedDay, $formattedDate",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            Text(
              formattedTime,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 75,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SlideAction(
                sliderButtonIcon: Image.asset(
                  'assets/images/arrow.png',
                  fit: BoxFit.cover,
                  width: 23,
                  height: 23,
                ),
                submittedIcon: Image.asset(
                  'assets/images/check.png',
                  fit: BoxFit.cover,
                  width: 23,
                  height: 23,
                ),
                text: "Slide to Unlock",
                textStyle: const TextStyle(fontSize: 19),
                alignment: Alignment.bottomCenter,
                borderRadius: 25,
                elevation: 0,
                innerColor: Colors.black,
                outerColor: Colors.grey[200],
                textColor: Colors.black,
                onSubmit: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
