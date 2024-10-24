import 'package:brainwave/pages/afterfeatures/afterfeatures_desktop.dart';
import 'package:brainwave/pages/features/features_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Afterfeatures extends GetResponsiveView {
  Afterfeatures({super.key}) : super(alwaysUseBuilder: false);

  // @override
  // Widget phone() => FeaturesMobile();

  @override
  Widget desktop() => AfterfeaturesDesktop();

//   @override
//   Widget tablet() => FeaturesTablet();
}