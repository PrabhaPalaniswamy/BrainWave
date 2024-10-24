import 'package:brainwave/pages/homepage/homepage_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetResponsiveView {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _featuresKey = GlobalKey();
  final GlobalKey _homeKey = GlobalKey();

  HomePage({super.key}) : super(alwaysUseBuilder: false);

  void scrollToContact() {
    final context = _contactKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  void scrollToFeatures() {
    final context = _featuresKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  void scrollToHome() {
    final context = _homeKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  @override
  Widget desktop() {
    return Stack(
      children: [
        HomePageDesktop(
          scrollController: _scrollController,
          contactKey: _contactKey,
          featureskey: _featuresKey,
          homekey: _homeKey,
          scrollToContact: scrollToContact,
          scrollToFeatures: scrollToFeatures,
          scrollToHome: scrollToHome,
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: FloatingActionButton(
            onPressed: scrollToHome,
            backgroundColor: Colors.grey, // Customize your button color
            child: Icon(Icons.arrow_upward),
          ),
        ),
      ],
    );
  }
}





  // @override
  // Widget phone() => HomePagePhone(
  //       scrollController: _scrollController,
  //       contactKey: _contactKey,
  //       featureskey: _featuresKey,
  //       homekey: _homeKey,
  //       scrollToContact: scrollToContact,
  //       scrollToFeatures: scrollToFeatures,
  //       scrollToHome: scrollToHome,
  //       onNavItemTap: onNavItemTap,
  //     );

  // @override
  // Widget tablet() => HomePageTablet(
  //       scrollController: _scrollController,
  //       contactKey: _contactKey,
  //       featuresKey: _featuresKey,
  //       homekey: _homeKey,
  //       scrollToContact: scrollToContact,
  //       scrollToFeatures: scrollToFeatures,
  //       scrollToHome: scrollToHome,
  //       //onNavItemTap: onNavItemTap,
  //     );