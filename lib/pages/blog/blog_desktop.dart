import 'package:brainwave/utils/animated_button.dart';
import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogDesktop extends StatelessWidget {
  BlogDesktop({Key? key}) : super(key: key);

  void _onOfferRequestTap() {
    // Add functionality for when the offer request button is tapped
    print("Offer request tapped");
  }

  void _onSpecificWishesTap() {
    // Add functionality for when the specific wishes button is tapped
    print("Specific wishes tapped");
  }

  void _onSolutionTap() {
    // Add functionality for when the solution button is tapped
    print("Solution tapped");
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;

    return Stack(
      children: [
        Positioned.fill(
          child: Container(), // Background image placeholder
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(), // Navigation bar placeholder
        ),
        Container(
          height: 400,
          margin:
              EdgeInsets.symmetric(horizontal: screenWidth / 10, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Center(
                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Colors.blue, Colors.purple],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: const ProText(
                            'BLOG',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Text(
                          'Onze Blog',
                          style: TextStyle(
                            color: BrainWave.primary,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: _onOfferRequestTap,
                              child: Row(
                                mainAxisSize: MainAxisSize
                                    .min, // Adjusts size to fit content
                                children: [
                                  Icon(Icons.lightbulb_outline,
                                      color: BrainWave
                                          .primary), // Your desired icon
                                  SizedBox(
                                      width: 8), // Space between icon and text
                                  Text(
                                    "Wat is AI? Kunstmatige Intelligentie voor beginners",
                                    style: TextStyle(
                                      color: BrainWave.primary,
                                      fontSize: 30,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextButton(
                              onPressed: _onSolutionTap,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.arrow_back,
                                      color: BrainWave
                                          .primary), // Your desired icon
                                  SizedBox(
                                      width: 8), // Space between icon and text
                                  Text(
                                    "De evolutie van kunstmatige intelligentie",
                                    style: TextStyle(
                                      color: BrainWave.primary,
                                      fontSize: 30,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
