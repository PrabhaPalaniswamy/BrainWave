import 'package:brainwave/pages/hackations/hackations_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hackations extends GetResponsiveView {
  Hackations({super.key}) : super(alwaysUseBuilder: false);

  // @override
  // Widget phone() => WhywhatsappMobile();

  @override
  Widget desktop() => HackationsDesktop();

  // @override
  // Widget tablet() => WhywhatsappTablet();
}
