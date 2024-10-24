import 'package:brainwave/pages/blog/blog_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Blog extends GetResponsiveView {
  Blog({super.key}) : super(alwaysUseBuilder: false);

  // @override
  // Widget phone() => FeaturesMobile();

  @override
  Widget desktop() => BlogDesktop();

//   @override
//   Widget tablet() => FeaturesTablet();
}
