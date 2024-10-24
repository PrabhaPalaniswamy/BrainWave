import 'package:brainwave/utils/colors.dart';
import 'package:flutter/material.dart';

class AnimatedElevatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;

  const AnimatedElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    required ButtonStyle style,
  }) : super(key: key);

  @override
  _AnimatedElevatedButtonState createState() => _AnimatedElevatedButtonState();
}

class _AnimatedElevatedButtonState extends State<AnimatedElevatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 1.1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHover(bool isHovering) {
    setState(() {
      _isHovered = isHovering;
      if (isHovering) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor:
                _isHovered ? BrainWave.secondary : Colors.transparent,
            shadowColor: Colors.transparent,
            textStyle: const TextStyle(fontSize: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.blue, width: 2),
            ),
          ),
          onPressed: widget.onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                  color: _isHovered
                      ? Colors.white
                      : Colors.blue, // Change color based on hover state
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(width: 8),
              Icon(widget.icon, color: _isHovered ? Colors.white : Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
