import 'package:brainwave/utils/base_widgets.dart';
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
    double? w = Get.context?.width; // Safe check for width
    if (w == null) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: const Text('Unable to get screen width.'),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: w / 15, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns items to the top
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
              crossAxisAlignment:
                  imageLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                ProText(
                  s1.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ProText(
                  s2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: WebColors.primary,
                    fontSize: w / 30,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ProText(
                  s3,
                  textAlign: imageLeft ? TextAlign.left : TextAlign.right,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 20),
                // Create buttons dynamically based on the passed list
                ...buttons.map((button) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ProElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.blue.shade800)),
                        ),
                        onPressed: button['onPressed'] as void Function(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ProText(
                              button['label'] as String,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.indigo.shade700),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.arrow_outward_sharp,
                              size: 24,
                              color: Colors.blue,
                            ),
                          ],
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
