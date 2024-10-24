import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondpageDesktop extends StatelessWidget {
  // final VoidCallback scrollToContact;
  // final VoidCallback scrollToFeatures;
  // final VoidCallback scrollToHome;

  SecondpageDesktop({
    Key? key,
    // required this.scrollToContact,
    // required this.scrollToFeatures,
    // required this.scrollToHome,
  }) : super(key: key);

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
                            'HOE WIJ WERKEN',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Expanded(
                          child: Text(
                            'Verander de regels. Vorm de  Toekomst.',
                            style: TextStyle(
                              color: BrainWave.primary,
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          "Werk samen met AI, data en digitale tools om de werkplek van morgen te creëren.",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //const SizedBox(height: 40),
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
