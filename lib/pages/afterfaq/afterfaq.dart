import 'package:brainwave/utils/animated_button.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfterFaqDesktop extends StatelessWidget {
  // final VoidCallback scrollToContact;
  // final VoidCallback scrollToFeatures;
  // final VoidCallback scrollToHome;

  AfterFaqDesktop({
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
                      // const Center(
                      //     child: Text(
                      //   "ONDERWERPEN",
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // )),
                      // const SizedBox(height: 30),
                      Center(
                        child: Expanded(
                          child: Text(
                            'Ontvang direct een \nvrijblijvende offerte.',
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
                      Center(
                        child: Text(
                          "Benieuwd wat wij voor jou kunnen betekenen? Vraag vandaag nog een \nvrijblijvende offerte aan en vertel ons jouw specifieke wensen voor de\n training. Samen creëren we een oplossing op maat.",
                          style: TextStyle(
                            color: BrainWave.primary,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: AnimatedElevatedButton(
                          onPressed: () {},
                          text: 'Mails ons',
                          icon: Icons.arrow_outward,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                          ),
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
