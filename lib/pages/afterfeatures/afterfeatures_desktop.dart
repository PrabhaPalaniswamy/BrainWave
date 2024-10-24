import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfterfeaturesDesktop extends StatelessWidget {
  AfterfeaturesDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;

    return Stack(
      children: [
        Positioned.fill(
          child: Container(),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(),
        ),
        Container(
          height: 400,
          margin:
              EdgeInsets.symmetric(horizontal: screenWidth / 10, vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Ontdek de \nmogelijkheden met \nbrainwave',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Ontdek waarom organisaties kiezen voor Brainwave Consultancy voor \nhun digitale trainingen, of het nou een kennismaking training is of een \nhackaton om een bedrijfsspecifieke chatbot.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Action for the button
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: const Text(
                    'Neem contact met ons op',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
