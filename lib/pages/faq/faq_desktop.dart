import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:brainwave/utils/constants.dart';
import 'package:flutter/material.dart';

class FAQDesktop extends StatefulWidget {
  @override
  _FAQDesktopState createState() => _FAQDesktopState();
}

class _FAQDesktopState extends State<FAQDesktop> {
  late List<bool> _expanded;

  final List<Map<String, String>> _faqs = [
    {
      "question": "Beiden jullie ook trainingen op locatie aan?",
      "answer":
          "Ja, wij verzorgen trainingen op locatie bij uw bedrijf. Dit biedt de mogelijkheid om de training volledig af te stemmen op uw specifieke behoeften en werkomgeving."
    },
    {
      "question": "Voor wie zijn jullie training bedoeld?",
      "answer":
          "Onze trainingen zijn geschikt voor een breed scala aan deelnemers, van beginners tot gevorderden. We richten ons op professionals die hun kennis willen uitbreiden, ongeacht hun ervaringsniveau."
    },
    {
      "question": "Wat is de duur van een typische training?",
      "answer":
          "De duur van de training is afhankelijk van jullie wensen. Het begint bij een training van 3 uur voor een kennismaking. Voor een optimale kennismaking raden we echter een langere training aan."
    },
    {
      "question": "Wat zijn de kosten van een training?",
      "answer":
          "De kosten van een AI workshop beginnen vanaf 750, -exclusief BTW. De exacte prijs kan varieren afhankelijk van de specifieke behoeften en vereisten van de workshop, zoals het aantal deelnemers, de duur en mate van maatwerk. Neem gerust contact met ons op voor een vrijblijvende offerte op maat!"
    },
  ];

  @override
  void initState() {
    super.initState();
    _expanded = List.filled(_faqs.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: const ProText(
                'FAQ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          const SizedBox(
              height: 10), // Space between the additional text and heading

          // FAQ Heading
          Center(
            child: ProText(
              'Meest gestelde vragen', // Your heading text
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60, // Adjust the font size
                color: BrainWave.primary, // Color for your heading
              ),
            ),
          ),
          const SizedBox(height: 20), // Space after heading

          // FAQ Contents
          Container(
            padding: EdgeInsets.all(16),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _faqs.length,
              itemBuilder: (context, index) {
                return ExpansionTile(
                  title: Center(
                    child: ProText(
                      _faqs[index]["question"]!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: BrainWave.primary,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  trailing: Icon(
                    _expanded[index]
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down,
                    color: BrainWave.primary,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ProText(
                          _faqs[index]["answer"]!,
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                  onExpansionChanged: (isExpanded) {
                    setState(() {
                      _expanded[index] = isExpanded;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
