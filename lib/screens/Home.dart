import 'package:animated_gradient/animated_gradient.dart';
import 'package:flutter/material.dart';
import 'package:Swarnim_Jain/functions/navigation_bar.dart';
import 'package:Swarnim_Jain/screens/main%20screens/desktop.dart';
import 'package:Swarnim_Jain/screens/main%20screens/mobile.dart';
import 'package:Swarnim_Jain/screens/main%20screens/tablet.dart';

class HomeScreen extends StatefulWidget {
  final int currentIndex;
  const HomeScreen({super.key, this.currentIndex = 0});

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
          child: NavigationWrapper(
            showNavBar: false,
            currentIndex: widget.currentIndex,
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
      ),
    );
  }
}
