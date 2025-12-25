import 'dart:math' as math;
import 'package:flutter/material.dart';

class WaveText extends StatefulWidget {
  final String text;
  final TextStyle? style;

  const WaveText({
    super.key,
    required this.text,
    this.style,
  });

  @override
  State<WaveText> createState() => _WaveTextState();
}

class _WaveTextState extends State<WaveText>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.text.length, (i) {
        return AnimatedBuilder(
          animation: controller,
          builder: (_, __) {
            final wave = math.sin(
              controller.value * 2 * math.pi + i,
            ) *
                6;

            return Transform.translate(
              offset: Offset(0, wave),
              child: Text(
                widget.text[i],
                style: widget.style,
              ),
            );
          },
        );
      }),
    );
  }
}
