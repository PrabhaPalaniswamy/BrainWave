import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnderwerpenDesktop extends StatelessWidget {
  // final VoidCallback scrollToContact;
  // final VoidCallback scrollToFeatures;
  // final VoidCallback scrollToHome;

  OnderwerpenDesktop({
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
                      const Center(
                          child: Text(
                        "ONDERWERPEN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      const SizedBox(height: 30),
                      Center(
                        child: Expanded(
                          child: Text(
                            'Versterk je zakelijk succes met \nde workshops van Brainwave Consultancy',
                            style: TextStyle(
                              color: Colors.indigo.shade900,
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
                          "Verkrijg waardevolle trainingen op de volgende onderwerpen",
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
