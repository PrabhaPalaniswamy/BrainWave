import 'package:brainwave/pages/afterfeatures/afterfeatures_desktop.dart';
import 'package:brainwave/pages/faq/faq_desktop.dart';
import 'package:brainwave/pages/features/features_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FAQ extends GetResponsiveView {
  FAQ({super.key}) : super(alwaysUseBuilder: false);

  // @override
  // Widget phone() => FeaturesMobile();

  @override
  Widget desktop() => FAQDesktop();

//   @override
//   Widget tablet() => FeaturesTablet();
}
