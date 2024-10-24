import 'package:brainwave/pages/workshop1/workshop1_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Workshop1 extends GetResponsiveView {
  Workshop1({super.key}) : super(alwaysUseBuilder: false);

  // @override
  // Widget phone() => WhywhatsappMobile();

  @override
  Widget desktop() => Workshop1Desktop();

  // @override
  // Widget tablet() => WhywhatsappTablet();
}
