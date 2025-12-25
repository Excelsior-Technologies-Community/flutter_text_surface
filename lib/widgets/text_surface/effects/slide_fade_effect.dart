import 'package:flutter/material.dart';

class SlideFadeText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final Duration duration;
  final bool loop;

  const SlideFadeText({
    super.key,
    required this.text,
    this.style,
    required this.duration,
    this.loop = true,
  });

  @override
  State<SlideFadeText> createState() => _SlideFadeTextState();
}

class _SlideFadeTextState extends State<SlideFadeText>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacity;
  late Animation<Offset> slide;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: widget.duration);

    opacity = Tween(begin: 0.0, end: 1.0).animate(controller);
    slide = Tween(begin: const Offset(0, 0.3), end: Offset.zero)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    if (widget.loop) {
      controller.repeat(reverse: true);
    } else {
      controller.forward();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacity,
      child: SlideTransition(
        position: slide,
        child: Text(widget.text, style: widget.style),
      ),
    );
  }
}
