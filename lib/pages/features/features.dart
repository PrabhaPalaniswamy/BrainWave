import 'package:brainwave/pages/features/features_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Features extends GetResponsiveView {
  Features({super.key}) : super(alwaysUseBuilder: false);

  // @override
  // Widget phone() => FeaturesMobile();

  @override
  Widget desktop() => FeaturesDesktop();

//   @override
//   Widget tablet() => FeaturesTablet();
}
