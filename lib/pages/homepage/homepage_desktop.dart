import 'package:brainwave/pages/afterfeatures/afterfeatures_desktop.dart';
import 'package:brainwave/pages/faq/faq_desktop.dart';
import 'package:brainwave/pages/features/features_desktop.dart';
import 'package:brainwave/pages/frontpage/frontpage_desktop.dart';
import 'package:brainwave/pages/hackations/hackations.dart';
import 'package:brainwave/pages/hackations/hackations_desktop.dart';
import 'package:brainwave/pages/navbar/desktop_navbar.dart';
import 'package:brainwave/pages/onderwerpen/onderwerpen_desktop.dart';
import 'package:brainwave/pages/workshop1/workshop1.dart';
import 'package:brainwave/pages/workshop1/workshop1_desktop.dart';
import 'package:brainwave/pages/workshop2/workshop2_desktop.dart';
import 'package:flutter/material.dart';

class HomePageDesktop extends StatelessWidget {
  final ScrollController scrollController;
  final GlobalKey contactKey;
  final GlobalKey featureskey;
  final GlobalKey homekey;
  final VoidCallback scrollToContact;
  final VoidCallback scrollToFeatures;
  final VoidCallback scrollToHome;

  const HomePageDesktop({
    required this.scrollController,
    required this.contactKey,
    required this.featureskey,
    required this.homekey,
    required this.scrollToContact,
    required this.scrollToFeatures,
    required this.scrollToHome,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.transparent, // Background color for navbar
                child: DesktopNavBar(
                  scrollToContact: scrollToContact,
                  scrollToFeatures: scrollToFeatures,
                  scrollToHome: scrollToHome,
                  onNavItemTap: (index) {},
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      FrontDesktop(
                        key: homekey,
                        scrollToContact: scrollToContact,
                        scrollToFeatures: scrollToFeatures,
                        scrollToHome: scrollToHome,
                      ),
                      const Workshop1Desktop(),
                      const SizedBox(height: 100),
                      const HackationsDesktop(),
                      const SizedBox(height: 100),
                      const Workshop2Desktop(),
                      OnderwerpenDesktop(),
                      FeaturesDesktop(),
                      AfterfeaturesDesktop(),
                      FAQDesktop(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
