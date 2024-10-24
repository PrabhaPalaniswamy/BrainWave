import 'package:brainwave/pages/features/features_contents.dart';
import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';

class FeaturesDesktop extends StatefulWidget {
  @override
  _FeaturesDesktopState createState() => _FeaturesDesktopState();
}

class _FeaturesDesktopState extends State<FeaturesDesktop> {
  @override
  Widget build(BuildContext context) {
    const int itemsPerRow = 3;
    int numberOfRows = (featurescontents.length / itemsPerRow).ceil();

    return Container(
      child: ProColumn(
        mainAxisSize: MainAxisSize.max,
        children: [
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          // ),
          // const SizedBox(height: 20),
          for (int rowIndex = 0; rowIndex < numberOfRows; rowIndex++)
            ProRow(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = rowIndex * itemsPerRow;
                    i < (rowIndex + 1) * itemsPerRow &&
                        i < featurescontents.length;
                    i++)
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: 350,
                      height: 300,
                      child: ProColumn(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueAccent, // Blue circle
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ProColumn(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: ProText(
                                  featurescontents[i]["title"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: BrainWave.primary,
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 15),
                              ProText(
                                featurescontents[i]["description"],
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: BrainWave.primary,
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
