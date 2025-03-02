import 'package:flutter/material.dart';
import 'package:portfolio/functions/navigation_bar.dart';
import 'package:portfolio/functions/responsive_layout.dart';
import 'package:portfolio/screens/pages/project_pages/myProject_mobile.dart';
import 'package:portfolio/screens/pages/project_pages/myProject_tablet.dart';
import 'package:portfolio/screens/pages/project_pages/my_projects.dart';

class ResponstiveProjects extends StatelessWidget {
  final int currentIndex;
  final int initialIndex; // Accept the initial index

  const ResponstiveProjects({
    super.key,
    required this.initialIndex,
    this.currentIndex = 1,
  });

  @override
  Widget build(BuildContext context) {
    // Detect screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body:
          screenWidth >= 600
              ? NavigationWrapper(
                currentIndex: currentIndex,
                child: ResponsiveLayout(
                  desktopBody: myProject(initialIndex: initialIndex),
                  mobileBody: myProject_mobile(initialIndex: initialIndex),
                  tabletBody: myProject_tablet(initialIndex: initialIndex),
                ),
              )
              : NavigationWrapper(
                currentIndex: currentIndex,
                child: ResponsiveLayout(
                  desktopBody: myProject(initialIndex: initialIndex),
                  mobileBody: myProject_mobile(initialIndex: initialIndex),
                  tabletBody: myProject_tablet(initialIndex: initialIndex),
                ),
              ),
    );
  }
}
