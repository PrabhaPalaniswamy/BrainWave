import 'package:brainwave/pages/workshop1/workshop1_desktop.dart';
import 'package:brainwave/pages/workshop2/workshop2_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Workshop2 extends GetResponsiveView {
  Workshop2({super.key}) : super(alwaysUseBuilder: false);

  // @override
  // Widget phone() => WhywhatsappMobile();

  @override
  Widget desktop() => Workshop2Desktop();

  // @override
  // Widget tablet() => WhywhatsappTablet();
}
