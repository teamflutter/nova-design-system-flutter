import 'package:flutter/material.dart';

import 'ResponsiveUtil.dart';
import 'ThemeUtils.dart';

class AppTypography {
  static const String fontFamily = "DM-Sans";

  static TypographyGroup uiStyle(BuildContext context) {
    final palette = ThemeUtils.getPalette(context);

    return TypographyGroup(
      xs3: TextStyle(
          fontSize: ResponsiveUtils.fontSize(9),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xs2: TextStyle(
          fontSize: ResponsiveUtils.fontSize(10),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xs: TextStyle(
          fontSize: ResponsiveUtils.fontSize(12),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      sm: TextStyle(
          fontSize: ResponsiveUtils.fontSize(14),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      md: TextStyle(
          fontSize: ResponsiveUtils.fontSize(16),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      lg: TextStyle(
          fontSize: ResponsiveUtils.fontSize(18),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl: TextStyle(
          fontSize: ResponsiveUtils.fontSize(20),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl2: TextStyle(
          fontSize: ResponsiveUtils.fontSize(24),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl3: TextStyle(
          fontSize: ResponsiveUtils.fontSize(32),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl4: TextStyle(
          fontSize: ResponsiveUtils.fontSize(40),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl5: TextStyle(
          fontSize: ResponsiveUtils.fontSize(48),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl6: TextStyle(
          fontSize: ResponsiveUtils.fontSize(56),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl7: TextStyle(
          fontSize: ResponsiveUtils.fontSize(64),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
      xl8: TextStyle(
          fontSize: ResponsiveUtils.fontSize(72),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.midnightBlack),
    );
  }

  // Paragraph Typography Group
  static ParagraphTypographyGroup paragraphStyle(BuildContext context) {
    final palette = ThemeUtils.getPalette(context);

    return ParagraphTypographyGroup(
      xs: TextStyle(
          fontSize: ResponsiveUtils.fontSize(12),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.charcoal),
      // Dynamic color
      sm: TextStyle(
          fontSize: ResponsiveUtils.fontSize(14),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.charcoal),
      // Dynamic color
      md: TextStyle(
          fontSize: ResponsiveUtils.fontSize(16),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.charcoal),
      // Dynamic color
      lg: TextStyle(
          fontSize: ResponsiveUtils.fontSize(18),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.charcoal),
      // Dynamic color
      xl: TextStyle(
          fontSize: ResponsiveUtils.fontSize(20),
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: palette.charcoal), // Dynamic color
    );
  }
}

// Typography Group Class
class TypographyGroup {
  final TextStyle xs3;
  final TextStyle xs2;
  final TextStyle xs;
  final TextStyle sm;
  final TextStyle md;
  final TextStyle lg;
  final TextStyle xl;
  final TextStyle xl2;
  final TextStyle xl3;
  final TextStyle xl4;
  final TextStyle xl5;
  final TextStyle xl6;
  final TextStyle xl7;
  final TextStyle xl8;

  const TypographyGroup({
    required this.xs3,
    required this.xs2,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xl2,
    required this.xl3,
    required this.xl4,
    required this.xl5,
    required this.xl6,
    required this.xl7,
    required this.xl8,
  });
}

// Paragraph Typography Group Class
class ParagraphTypographyGroup {
  final TextStyle xs;
  final TextStyle sm;
  final TextStyle md;
  final TextStyle lg;
  final TextStyle xl;

  const ParagraphTypographyGroup({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });
}
