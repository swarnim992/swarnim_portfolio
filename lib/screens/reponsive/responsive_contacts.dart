import 'package:flutter/material.dart';
import 'package:Swarnim_Jain/functions/navigation_bar.dart';
import 'package:Swarnim_Jain/functions/responsive_layout.dart';
import 'package:Swarnim_Jain/screens/pages/contact_pages/ContactMe_mobile.dart';
import 'package:Swarnim_Jain/screens/pages/contact_pages/ContactMe_tablet.dart';

class ResponsiveContacts extends StatelessWidget {
  final int currentIndex;
  const ResponsiveContacts({super.key, this.currentIndex = 2});

  @override
  Widget build(BuildContext context) {
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
