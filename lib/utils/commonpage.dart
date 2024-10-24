import 'package:brainwave/utils/animated_button.dart'; // Import for AnimatedElevatedButton
import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:brainwave/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget CommonPage(
  String s1,
  String s2,
  String s3,
  String? image,
  bool imageLeft,
  List<Map<String, dynamic>> buttons,
) {
  try {
    double? w = Get.context?.width;
    if (w == null) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: const Text('Unable to get screen width.'),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: w / 15, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageLeft)
            Expanded(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  image: image != null
                      ? DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)
                      : null,
                ),
              ),
            ),
          const SizedBox(width: 80),
          Expanded(
            child: Column(
              crossAxisAlignment: imageLeft
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.pink, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: ProText(
                    s1.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 10),
                ProText(
                  s2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: BrainWave.primary,
                    fontSize: w / 30,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ProText(
                  s3,
                  textAlign: imageLeft ? TextAlign.left : TextAlign.right,
                  style: TextStyle(
                    color: BrainWave.primary,
                    fontSize: 20,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 20),
                ...buttons.map((button) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: AnimatedElevatedButton(
                        onPressed: button['onPressed'] as void Function(),
                        text: button['label'] as String,
                        icon: Icons.arrow_outward,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.blue.shade800),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(width: 80),
          if (!imageLeft)
            Expanded(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  image: image != null
                      ? DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)
                      : null,
                ),
              ),
            ),
        ],
      ),
    );
  } catch (e) {
    return Container(child: Text(e.toString()));
  }
}
