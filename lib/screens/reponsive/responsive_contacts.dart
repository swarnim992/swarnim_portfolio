import 'package:flutter/material.dart';
import 'package:portfolio/functions/navigation_bar.dart';
import 'package:portfolio/functions/responsive_layout.dart';
import 'package:portfolio/screens/pages/contact_pages/ContactMe_mobile.dart';
import 'package:portfolio/screens/pages/contact_pages/ContactMe_tablet.dart';

class ResponsiveContacts extends StatelessWidget {
  final int currentIndex;
  const ResponsiveContacts({super.key, this.currentIndex = 3});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: NavigationWrapper(
        currentIndex: currentIndex,
        child: const ResponsiveLayout(
          mobileBody: ContactMe_mobile(),
          tabletBody: ContactMe_tablet(),
          desktopBody: ContactMe_tablet(),
        ),
      ),
    );
  }
}
