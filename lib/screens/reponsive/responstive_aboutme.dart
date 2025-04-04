import 'package:flutter/material.dart';
import 'package:Swarnim_Jain/functions/navigation_bar.dart';
import 'package:Swarnim_Jain/functions/responsive_layout.dart';

class ResponstiveAboutme extends StatelessWidget {
  final int currentIndex;
  const ResponstiveAboutme({super.key, this.currentIndex = 2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigationWrapper(
        currentIndex: currentIndex,
        child: const ResponsiveLayout(
          mobileBody: SizedBox.shrink(),
          tabletBody: SizedBox.shrink(),
          desktopBody: SizedBox.shrink(),
        ),
      ),
    );
  }
}
