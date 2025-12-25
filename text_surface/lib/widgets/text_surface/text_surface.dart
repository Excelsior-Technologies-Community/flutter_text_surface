import 'package:flutter/material.dart';
import 'package:text_surface/core/utils/text_utils.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_spacing.dart';
import '../../core/theme/app_text_styles.dart';
import 'text_surface_style.dart';

class TextSurface extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final int? maxLines;
  final TextOverflow overflow;
  final TextSurfaceStyle? style;

  const TextSurface({
    super.key,
    required this.text,
    this.textStyle,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = TextSurfaceStyle(
      backgroundColor: AppColors.surface,
      padding: const EdgeInsets.all(AppSpacing.md),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.border),
      shadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 8,
          offset: const Offset(0, 2),
        )
      ],
    );

    final appliedStyle = style ?? defaultStyle;

    return Container(
      padding: appliedStyle.padding,
      decoration: BoxDecoration(
        color: appliedStyle.backgroundColor,
        borderRadius: appliedStyle.borderRadius,
        border: appliedStyle.border,
        boxShadow: appliedStyle.shadow,
      ),
      child: Text(
        TextUtils.safe(text),
        style: textStyle ?? AppTextStyles.body,
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}
