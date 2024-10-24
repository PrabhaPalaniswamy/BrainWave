import 'package:brainwave/utils/animated_button.dart';
import 'package:brainwave/utils/base_widgets.dart';
import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopNavBar extends StatefulWidget {
  final VoidCallback scrollToContact;
  final VoidCallback scrollToFeatures;
  final VoidCallback scrollToHome;

  DesktopNavBar({
    super.key,
    required this.scrollToContact,
    required this.scrollToFeatures,
    required this.scrollToHome,
    required Function(int p1) onNavItemTap,
  });

  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar>
    with SingleTickerProviderStateMixin {
  late List<bool> isHoveredList;
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _isDropdownOpen = false;

  @override
  void initState() {
    super.initState();
    isHoveredList = List.filled(6, false);

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleHover(bool isHovering, int index) {
    setState(() {
      isHoveredList[index] = isHovering;
    });
  }

  void _toggleDropdown(bool isHovering) {
    setState(() {
      _isDropdownOpen = isHovering;
      if (_isDropdownOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: ProRow(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: widget.scrollToHome,
            child: ProContainer(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
          navLogo(),
          ProRow(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              navButton('Onze Diensten', widget.scrollToHome, 0),
              MouseRegion(
                onEnter: (_) => _toggleDropdown(true),
                onExit: (_) => _toggleDropdown(false),
                child: GestureDetector(
                  onTap: () {},
                  child: const Stack(
                    clipBehavior: Clip.none,
                    children: [],
                  ),
                ),
              ),
              navButton('Over Ons', widget.scrollToFeatures, 2),
              navButton('Blog', widget.scrollToContact, 3),
              //navButton('Login', login_launchURL, 4),
              // navButton('Careers', () {}, 5),
            ],
          ),
          ProContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: 45,
            child: AnimatedElevatedButton(
                onPressed: () {
                  // Define what happens on button press
                },
                text: 'Plan een kennismaking',
                icon: Icons.schedule,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.blue.shade800),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text, VoidCallback onPressed, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: MouseRegion(
        onEnter: (_) => _toggleHover(true, index),
        onExit: (_) => _toggleHover(false, index),
        child: GestureDetector(
          onTap: onPressed,
          child: ScaleTransition(
            scale: Tween<double>(begin: 1.0, end: 1.1).animate(
              CurvedAnimation(
                parent: _animationController,
                curve: Curves.easeInOut,
              ),
            ),
            child: isHoveredList[index]
                ? ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: <Color>[
                          Colors.pinkAccent,
                          Colors.blueAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    child: ProText(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  )
                : ProText(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return ProRow(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProContainer(
          width: 120,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/brainwave.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
