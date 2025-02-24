import 'package:animated_gradient/animated_gradient.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/main%20screens/desktop.dart';
import 'package:portfolio/screens/main%20screens/mobile.dart';
import 'package:portfolio/screens/main%20screens/tablet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedGradient(
        colors: [Colors.black, const Color.fromARGB(255, 2, 25, 59)],
        child: Center(
          child: LayoutBuilder(
            builder: (context, constrains) {
              if (constrains.maxWidth < 600) {
                return MobileBody();
              } else if (constrains.maxWidth < 1200) {
                return TabletBody();
              } else {
                return DesktopBody();
              }
            },
          ),
        ),
      ),
    );
  }
}
