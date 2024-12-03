import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget child;
  final Size designSize;

  const ResponsiveWrapper({super.key,
    required this.child,
    this.designSize = const Size(360, 690), // Default design size
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designSize,
      builder: (context, widget) => child,
    );
  }
}

