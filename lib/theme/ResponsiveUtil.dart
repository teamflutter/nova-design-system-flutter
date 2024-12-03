import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveUtils {
  static double width(double value) => value.w;

  static double height(double value) => value.w;

  static double fontSize(double value) => value.sp;

  static double radius(double value) => value.r;
}


// class ResponsiveUtils {
//   static late double _screenWidth;
//   static late double _screenHeight;
//   static late double _scaleFactorWidth;
//   static late double _scaleFactorHeight;
//
//   static void init(BuildContext context, {double designWidth = 360, double designHeight = 690}) {
//     final mediaQuery = MediaQuery.of(context);
//
//     _screenWidth = mediaQuery.size.width;
//     _screenHeight = mediaQuery.size.height;
//
//     _scaleFactorWidth = _screenWidth / designWidth;
//     _scaleFactorHeight = _screenHeight / designHeight;
//   }
//
//   /// Scale dimensions based on width
//   static double width(double value) => value * _scaleFactorWidth;
//
//   /// Scale dimensions based on height
//   static double height(double value) => value * _scaleFactorHeight;
//
//   /// Adjust font size based on width scaling
//   static double fontSize(double value) => value * _scaleFactorWidth;
//
//   /// Scale border radius
//   static double radius(double value) => value * _scaleFactorWidth;
// }