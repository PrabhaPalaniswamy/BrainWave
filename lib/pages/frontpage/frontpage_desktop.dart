import 'package:brainwave/utils/base_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FrontDesktop extends StatefulWidget {
  final VoidCallback scrollToContact;
  final VoidCallback scrollToFeatures;
  final VoidCallback scrollToHome;

  FrontDesktop({
    Key? key,
    required this.scrollToContact,
    required this.scrollToFeatures,
    required this.scrollToHome,
  }) : super(key: key);

  @override
  _FrontDesktopState createState() => _FrontDesktopState();
}

class _FrontDesktopState extends State<FrontDesktop>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isImageVisible = false;
//  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    // _scrollController = ScrollController();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    Future.delayed(const Duration(milliseconds: 0), () {
      setState(() {
        _isImageVisible = true;
      });
      _controller.forward();
    });
  }

  @override
  void dispose() {
    // _scrollController.dispose();
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;

    return Stack(
      children: [
        Positioned.fill(
          // child: Image.asset(
          //   'assets/background/frontpagebg.png',
          //   fit: BoxFit.cover,
          // ),
          child: Container(),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
              // child: DesktopNavBar(
              //   scrollToContact: widget.scrollToContact,
              //   scrollToFeatures: widget.scrollToFeatures,
              //   scrollToHome: widget.scrollToHome, onNavItemTap: (int p1) {},
              //   //scrollController: _scrollController,
              // ),
              ),
        ),
        Container(
          height: 600,
          margin:
              EdgeInsets.symmetric(horizontal: screenWidth / 10, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(
                              //   width: 100,
                              //   height: 100,
                              //   child: Image.asset(
                              //     'assets/gif/messagefront.gif',
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
                              //const SizedBox(width: 10),

                              Expanded(
                                child: Text(
                                  'Maak je organisatie \nfuture-proof.',
                                  style: TextStyle(
                                    color: Colors.indigo.shade900,
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const ProText(
                          "Ontdek hoe onze op maat gemaakte AI-trainingen en hackathons je team kunnen inspireren en klaarstomen voor de digitale uitdagingen van morgen.",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 40),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.transparent,
                                    textStyle: const TextStyle(fontSize: 16),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1),
                                      side: const BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_downward_outlined,
                                    color: Colors.white,
                                  ),
                                  label: const ProText(
                                    'Kom meer te weten',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              // Center(
                              //   child: Row(
                              //     children: [

                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
