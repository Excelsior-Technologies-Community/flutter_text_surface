import 'package:flutter/material.dart';
import 'text_surface_animation.dart';
import 'effects/slide_fade_effect.dart';
import 'effects/scale_color_effect.dart';
import 'effects/bounce_effect.dart';
import 'effects/wave_effect.dart';

class AnimatedTextSurface extends StatelessWidget {
  final String text;
  final TextSurfaceAnimation animation;
  final TextStyle? style;
  final Duration duration;

  const AnimatedTextSurface({
    super.key,
    required this.text,
    required this.animation,
    this.style,
    this.duration = const Duration(milliseconds: 800),
  });

  @override
  Widget build(BuildContext context) {
    switch (animation) {
      case TextSurfaceAnimation.slideFade:
        return SlideFadeText(text: text, style: style, duration: duration);

      case TextSurfaceAnimation.scaleColor:
        return ScaleColorText(text: text, style: style, duration: duration);

      case TextSurfaceAnimation.bounce:
        return BounceText(text: text, style: style, duration: duration);

      case TextSurfaceAnimation.wave:
        return WaveText(text: text, style: style);
    }
  }
}
