import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTypography {
  static const String fontFamily = "DM-Sans";

  // UI Typography Group
  static TypographyGroup uiStyle = TypographyGroup(
    xs3: TextStyle(
        fontSize: 9.sp,
        fontWeight: FontWeight.w400,
        height: 16.w,
        fontFamily: fontFamily),
    xs2: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        height: 16.w,
        fontFamily: fontFamily),
    xs: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        height: 16.w,
        fontFamily: fontFamily),
    sm: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        height: 24.w,
        fontFamily: fontFamily),
    md: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        height: 24.w,
        fontFamily: fontFamily),
    lg: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        height: 28.w,
        fontFamily: fontFamily),
    xl: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        height: 32.w,
        fontFamily: fontFamily),
    xl2: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
        height: 32.w,
        fontFamily: fontFamily),
    xl3: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w400,
        height: 40.w,
        fontFamily: fontFamily),
    xl4: TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.w400,
        height: 48.w,
        fontFamily: fontFamily),
    xl5: TextStyle(
        fontSize: 48.sp,
        fontWeight: FontWeight.w400,
        height: 56.w,
        fontFamily: fontFamily),
    xl6: TextStyle(
        fontSize: 56.sp,
        fontWeight: FontWeight.w400,
        height: 64.w,
        fontFamily: fontFamily),
    xl7: TextStyle(
        fontSize: 64.sp,
        fontWeight: FontWeight.w400,
        height: 72.w,
        fontFamily: fontFamily),
    xl8: TextStyle(
        fontSize: 72.sp,
        fontWeight: FontWeight.w400,
        height: 76.w,
        fontFamily: fontFamily),
  );

  // Paragraph Typography Group
  static ParagraphTypographyGroup paragraphStyle = ParagraphTypographyGroup(
    xs: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        height: 16.w,
        fontFamily: fontFamily),
    sm: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        height: 20.w,
        fontFamily: fontFamily),
    md: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        height: 24.w,
        fontFamily: fontFamily),
    lg: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        height: 28.w,
        fontFamily: fontFamily),
    xl: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        height: 28.w,
        fontFamily: fontFamily),
  );
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
