import 'package:brainwave/utils/commonpage.dart';
import 'package:brainwave/utils/constants.dart';
import 'package:flutter/material.dart';

class HackationsDesktop extends StatelessWidget {
  const HackationsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPage(
      'HACKATIONS',
      'Versnel uw digitale transformatie met AI-hackathons.',
      'In één dag werkt je team samen met onze AI-experts om slimme, direct toepasbare oplossingen te creëren. Dit doen we in de vorm van een co-creation workshop. Of het nu gaat om workflows verbeteren met ChatGPT, processen automatiseren met Zapier of het maken van een eigen chatbot, onze hackathons zijn erop gericht om ideeën om te zetten in tastbare resultaten.',
      image3,
      true,
      [
        {
          'label': 'Organiseer een AI-Hackathon met ons!',
          'onPressed': () {/* Action for  Button */}
        },
      ],
    );
  }
}
