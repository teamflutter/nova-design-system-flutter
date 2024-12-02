import 'package:flutter/material.dart';

class LightThemeShadows {
  static const List<BoxShadow> shadowSm = [
    // First layer: 0px 0px 1px 0px #00000066
    BoxShadow(
      color: Color(0x66000000), // #00000066
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 6px 6px -6px #00000029
    BoxShadow(
      color: Color(0x29000000), // #00000029
      offset: Offset(0, 6),
      blurRadius: 6, // Blur radius 6px
    ),
  ];

  static const List<BoxShadow> shadowMd = [
    // First layer: 0px 0px 1px 0px #00000066
    BoxShadow(
      color: Color(0x66000000), // #00000066
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 12px 12px -6px #00000029
    BoxShadow(
      color: Color(0x29000000), // #00000029
      offset: Offset(0, 12),
      blurRadius: 12, // Blur radius 12px
    ),
  ];

  static const List<BoxShadow> shadowLg = [
    // First layer: 0px 0px 1px 0px #00000066
    BoxShadow(
      color: Color(0x66000000), // #00000066
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 8px 24px -6px #00000029
    BoxShadow(
      color: Color(0x29000000), // #00000029
      offset: Offset(0, 8),
      blurRadius: 24, // Blur radius 24px
    ),
  ];

  static const List<BoxShadow> shadowXl = [
    // First layer: 0px 0px 1px 0px #00000033
    BoxShadow(
      color: Color(0x33000000), // #00000033
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 0px 32px -8px #0000001F
    BoxShadow(
      color: Color(0x1F000000), // #0000001F
      offset: Offset(0, 0),
      blurRadius: 32, // Blur radius 32px
    ),
    // Third layer: 0px 32px 32px -8px #00000014
    BoxShadow(
      color: Color(0x14000000), // #00000014
      offset: Offset(0, 32),
      blurRadius: 32, // Blur radius 32px
    ),
  ];
}

class DarkThemeShadows {
  static const List<BoxShadow> shadowSm = [
    // First layer: 0px 0px 1px 0px #0000008F
    BoxShadow(
      color: Color(0x8F000000), // #0000008F
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 6px 6px -6px #000000A3
    BoxShadow(
      color: Color(0xA3000000), // #000000A3
      offset: Offset(0, 6),
      blurRadius: 6, // Blur radius 6px
    ),
  ];

  static const List<BoxShadow> shadowMd = [
    // First layer: 0px 0px 1px 0px #0000008F
    BoxShadow(
      color: Color(0x8F000000), // #0000008F
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 12px 12px -6px #000000A3
    BoxShadow(
      color: Color(0xA3000000), // #000000A3
      offset: Offset(0, 12),
      blurRadius: 12, // Blur radius 12px
    ),
  ];

  static const List<BoxShadow> shadowLg = [
    // First layer: 0px 0px 1px 0px #0000008F
    BoxShadow(
      color: Color(0x8F000000), // #0000008F
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 24px 24px -6px #000000A3
    BoxShadow(
      color: Color(0xA3000000), // #000000A3
      offset: Offset(0, 24),
      blurRadius: 24, // Blur radius 24px
    ),
  ];

  static const List<BoxShadow> shadowXl = [
    // First layer: 0px 0px 1px 0px #000000B8
    BoxShadow(
      color: Color(0xB8000000), // #000000B8
      offset: Offset(0, 0),
      blurRadius: 1, // Blur radius 1px
    ),
    // Second layer: 0px 48px 48px -6px #000000E0
    BoxShadow(
      color: Color(0xE0000000), // #000000E0
      offset: Offset(0, 48),
      blurRadius: 48, // Blur radius 48px
    ),
  ];
}
