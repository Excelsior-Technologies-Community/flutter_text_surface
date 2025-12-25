import 'package:flutter/material.dart';

class TextSurfaceStyle {
  final Color backgroundColor;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? shadow;

  const TextSurfaceStyle({
    required this.backgroundColor,
    required this.padding,
    required this.borderRadius,
    this.border,
    this.shadow,
  });
}
