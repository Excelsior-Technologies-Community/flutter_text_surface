import 'package:flutter/material.dart';

class ScaleColorText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final Duration duration;
  final bool loop;

  const ScaleColorText({
    super.key,
    required this.text,
    this.style,
    required this.duration,
    this.loop = true,
  });

  @override
  State<ScaleColorText> createState() => _ScaleColorTextState();
}

class _ScaleColorTextState extends State<ScaleColorText>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: widget.duration);

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
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return Transform.scale(
          scale: 0.8 + controller.value * 0.2,
          child: Text(
            widget.text,
            style: widget.style?.copyWith(
              color: Color.lerp(
                Colors.grey,
                Colors.blue,
                controller.value,
              ),
            ),
          ),
        );
      },
    );
  }
}
