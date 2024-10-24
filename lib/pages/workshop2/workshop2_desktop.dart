import 'package:brainwave/utils/commonpage.dart';
import 'package:brainwave/utils/constants.dart';
import 'package:flutter/material.dart';

class Workshop2Desktop extends StatelessWidget {
  const Workshop2Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPage(
      'WORKSHOPS',
      'Consultancy die toekomstperspectief biedt.',
      'Til je organisatie naar een hoger niveau met onze digitale expertise. Wij begeleiden je stap voor stap bij het ontwikkelen van gepersonaliseerde chatbots, het schrijven van beleid over generatieve AI en het creëren van workflows die je team naar succes leiden. Samen maken we je organisatie klaar voor de toekomst.',
      image2,
      false,
      [
        {
          'label': 'Neem contact op',
          'onPressed': () {/* Action for Another Button */}
        },
      ],
    );
  }
}
