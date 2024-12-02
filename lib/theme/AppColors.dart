import 'package:flutter/material.dart';

// ColorPalette class
class ColorPalette {
  final Color novaCoral;
  final Color blush;
  final Color electricBlue;
  final Color mist;
  final Color stone;
  final Color lightGray;
  final Color pureWhite;
  final Color charcoal;
  final Color midnightBlack;
  final Color graphite;
  final Color frostWhite;
  final Color deepBlack;

  const ColorPalette({
    required this.novaCoral,
    required this.blush,
    required this.electricBlue,
    required this.mist,
    required this.stone,
    required this.lightGray,
    required this.pureWhite,
    required this.charcoal,
    required this.midnightBlack,
    required this.graphite,
    required this.frostWhite,
    required this.deepBlack,
  });
}

// Light Theme Colors
class LightColors {
  static const novaCoral = Color(0xFFFE7477);
  static const blush = Color(0x1FFE7477);
  static const electricBlue = Color(0xFF0A72F9);
  static const mist = Color(0x0A000000);
  static const stone = Color(0xFFE2E2E2);
  static const lightGray = Color(0xFFF5F5F5);
  static const pureWhite = Color(0xFFFFFFFF);
  static const charcoal = Color(0x8F000000);
  static const midnightBlack = Color(0xFF0B0B0B);
  static const graphite = Color(0xFF595D62);
  static const frostWhite = Color(0xFFE2E2E2);
  static const deepBlack = Color(0xFF000000);
}

// Dark Theme Colors
class DarkColors {
  static const novaCoral = Color(0xFFFE7477);
  static const blush = Color(0x52FE7477);
  static const electricBlue = Color(0xFF0A72F9);
  static const mist = Color(0x14FFFFFF);
  static const stone = Color(0xFF444444);
  static const lightGray = Color(0xFF595D62);
  static const pureWhite = Color(0xFFFFFFFF);
  static const charcoal = Color(0x8F000000);
  static const midnightBlack = Color(0xFFFFFFFF);
  static const graphite = Color(0xFF595D62);
  static const frostWhite = Color(0xFFFFFFFF);
  static const deepBlack = Color(0xFF000000);
}

// Light and Dark Color Palettes
const lightColorPalette = ColorPalette(
  novaCoral: LightColors.novaCoral,
  blush: LightColors.blush,
  electricBlue: LightColors.electricBlue,
  mist: LightColors.mist,
  stone: LightColors.stone,
  lightGray: LightColors.lightGray,
  pureWhite: LightColors.pureWhite,
  charcoal: LightColors.charcoal,
  midnightBlack: LightColors.midnightBlack,
  graphite: LightColors.graphite,
  frostWhite: LightColors.frostWhite,
  deepBlack: LightColors.deepBlack,
);

const darkColorPalette = ColorPalette(
  novaCoral: DarkColors.novaCoral,
  blush: DarkColors.blush,
  electricBlue: DarkColors.electricBlue,
  mist: DarkColors.mist,
  stone: DarkColors.stone,
  lightGray: DarkColors.lightGray,
  pureWhite: DarkColors.pureWhite,
  charcoal: DarkColors.charcoal,
  midnightBlack: DarkColors.midnightBlack,
  graphite: DarkColors.graphite,
  frostWhite: DarkColors.frostWhite,
  deepBlack: DarkColors.deepBlack,
);

// Supportive Colors
class SupportiveColors {
  static const sunBurst = Color(0xFFFFB319);
  static const sunBurst60 = Color(0x8FFFB319);
  static const sunBurst10 = Color(0x1FFFB319);

  static const skyBlue = Color(0xFF0A72F9);
  static const skyBlue60 = Color(0x8F0A72F9);
  static const skyBlue10 = Color(0x1F0A72F9);

  static const forest = Color(0xFF2E7D32);
  static const forest60 = Color(0x8F2E7D32);
  static const forest10 = Color(0x1F2E7D32);

  static const scarlet = Color(0xFFD33030);
  static const scarlet60 = Color(0x8FD33030);
  static const scarlet10 = Color(0x1FD33030);

  static const mint = Color(0xFF95F1D5);
  static const mint60 = Color(0x8F95F1D5);
  static const mint10 = Color(0x1F95F1D5);

  static const bronze = Color(0xFFB3804A);
  static const bronze60 = Color(0x8FB3804A);
  static const bronze10 = Color(0x1FB3804A);

  static const royalBlue = Color(0xFF3448F0);
  static const royalBlue60 = Color(0x8F3448F0);
  static const royalBlue10 = Color(0x1F3448F0);

  static const violet = Color(0xFF5C33CF);
  static const violet60 = Color(0x8F5C33CF);
  static const violet10 = Color(0x1F5C33CF);

  static const chestNut = Color(0xFF725550);
  static const chestNut60 = Color(0x8F725550);
  static const chestNut10 = Color(0x1F725550);
}
