import 'package:brainwave/utils/commonpage.dart';
import 'package:brainwave/utils/constants.dart';
import 'package:flutter/material.dart';

class Workshop1Desktop extends StatelessWidget {
  const Workshop1Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPage(
      'WORKSHOPS',
      'Niet alleen Tech-savvy, maar AI-savvy',
      'Onze AI-workshops zijn ontworpen om je team future-proof te maken door hen kennis te laten maken met AI-tools als ChatGPT, Copilot & Claude. We bieden hands-on en op maat gemaakte workshops waarin je aan de slag gaat met cassusses die direct toepasbaar zijn in je werk. Daarmee zorgen wij ervoor dat je team klaar is om efficiënter, sneller en slimmer te werken. ',
      image1,
      false,
      [
        {
          'label': 'Neem contact op',
          'onPressed': () {/* Action for Button 1 */}
        },
      ],
    );
  }
}
