import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
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
          child: Image.asset(
            'assets/images/frontpagebg.png',
            fit: BoxFit.cover,
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
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                  'Transforming business, empowering people \nwith AI.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const ProText(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore \nmagna aliqua. Ut enim ad minim venaim,",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 40),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.cyan,
                                    backgroundColor: Colors.cyan,
                                    textStyle: const TextStyle(fontSize: 16),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  // icon: const Icon(
                                  //   Icons.arrow_downward_outlined,
                                  //   color: Colors.cyan,
                                  // ),
                                  label: ProText(
                                    'See more',
                                    style: TextStyle(
                                        color: BrainWave.primary,
                                        fontWeight: FontWeight.bold),
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
