import 'package:flutter/material.dart';

class BounceText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final Duration duration;

  const BounceText({
    super.key,
    required this.text,
    this.style,
    required this.duration,
  });

  @override
  State<BounceText> createState() => _BounceTextState();
}

class _BounceTextState extends State<BounceText>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, child) {
        return Transform.translate(
          offset: Offset(0, -10 * controller.value),
          child: Text(widget.text, style: widget.style),
        );
      },
    );
  }
}
