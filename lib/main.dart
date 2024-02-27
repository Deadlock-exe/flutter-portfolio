import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive_layout.dart';
import 'package:portfolio/responsive/scaffolds/desktop_scaffold.dart';
import 'package:portfolio/responsive/scaffolds/mobile_scaffold.dart';
import 'package:portfolio/responsive/scaffolds/tablet_scaffold.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
