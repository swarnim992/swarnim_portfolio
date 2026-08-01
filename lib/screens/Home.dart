import 'package:animated_gradient/animated_gradient.dart';
import 'package:flutter/material.dart';
import 'package:Swarnim_Jain/functions/navigation_bar.dart';
import 'package:Swarnim_Jain/screens/main%20screens/desktop.dart';
import 'package:Swarnim_Jain/screens/main%20screens/mobile.dart';
import 'package:Swarnim_Jain/screens/main%20screens/tablet.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  final int currentIndex;
  const HomeScreen({super.key, this.currentIndex = 0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showBanner = true;

  Future<void> _launchNewPortfolio() async {
    final Uri url = Uri.parse('https://swarnimjain.netlify.app/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget _buildBanner(BuildContext context, bool isMobile) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.amber.withOpacity(0.15),
        border: Border(
          bottom: BorderSide(
            color: Colors.amber.withOpacity(0.3),
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            const Icon(
              Icons.campaign_rounded,
              color: Colors.amber,
              size: 20,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "A brand new version of my portfolio is live!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        InkWell(
                          onTap: _launchNewPortfolio,
                          child: const Text(
                            "Visit swarnimjain.netlify.app 🚀",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    )
                  : RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        children: [
                          const TextSpan(
                            text: "A brand new version of my portfolio is live! ",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: InkWell(
                              onTap: _launchNewPortfolio,
                              child: const Text(
                                "Visit swarnimjain.netlify.app 🚀",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.white70, size: 18),
              onPressed: () {
                setState(() {
                  _showBanner = false;
                });
              },
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedGradient(
        colors: [Colors.black, const Color.fromARGB(255, 2, 25, 59)],
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;
            return Column(
              children: [
                if (_showBanner) _buildBanner(context, isMobile),
                Expanded(
                  child: Center(
                    child: NavigationWrapper(
                      showNavBar: false,
                      currentIndex: widget.currentIndex,
                      child: LayoutBuilder(
                        builder: (context, innerConstraints) {
                          if (innerConstraints.maxWidth < 600) {
                            return MobileBody();
                          } else if (innerConstraints.maxWidth < 1200) {
                            return TabletBody();
                          } else {
                            return DesktopBody();
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

