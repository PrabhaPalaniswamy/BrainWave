import 'package:brainwave/pages/features/features_contents.dart';
import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';

class FeaturesDesktop extends StatefulWidget {
  @override
  _FeaturesDesktopState createState() => _FeaturesDesktopState();
}

class _FeaturesDesktopState extends State<FeaturesDesktop> {
  late PageController _pageController;
  int currentIndex = 0;
  final Duration _duration = const Duration(seconds: 2);

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.75);

    Future.delayed(_duration, _changeFeature);
  }

  void _changeFeature() {
    if (currentIndex < featurescontents.length - 1) {
      currentIndex++;
    } else {
      currentIndex = 0; // Reset to the first feature
    }

    _pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );

    Future.delayed(_duration, _changeFeature);
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Height for the feature display area
      child: PageView.builder(
        controller: _pageController,
        itemCount: featurescontents.length,
        physics: BouncingScrollPhysics(), // Add bouncing effect
        itemBuilder: (context, index) {
          final feature = featurescontents[index];

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 150),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ProColumn(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: ProText(
                    feature["title"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: BrainWave.primary,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                ProText(
                  feature["description"],
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: BrainWave.primary,
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(width: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
