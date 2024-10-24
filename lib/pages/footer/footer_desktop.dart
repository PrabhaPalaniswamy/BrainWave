import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({super.key});

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.all(50),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/brainwave.png',
                height: 50,
              ),
              const SizedBox(height: 50),
              const ProText(
                'Vergroot je kennis en maak je \nbedrijf toekomstbestendig',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 50),
              const ProText(
                'Brainwave • Copyright © 2023',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            children: [
              TextButton(
                  onPressed: () {},
                  child: const ProText(
                    "Onze diensten",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  )),
              const SizedBox(height: 10),
              TextButton(
                  onPressed: () {},
                  child: const ProText(
                    "Blog",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: ProText(
                  'Bedrijf',
                  style: TextStyle(
                    color: BrainWave.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: ProText(
                  'Over ons',
                  style: TextStyle(
                    color: BrainWave.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: ProText(
                  'Neem contact op',
                  style: TextStyle(
                    color: BrainWave.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: ProText(
                  'Voorwaarden  Privacy beleid',
                  style: TextStyle(
                    color: BrainWave.primary,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
