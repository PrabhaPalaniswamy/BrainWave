import 'package:brainwave/pages/footer/footer_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Footer extends GetResponsiveView {
  Footer({super.key}) : super(alwaysUseBuilder: false);

  @override
  Widget desktop() => const FooterDesktop();
}
