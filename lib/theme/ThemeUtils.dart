import 'package:flutter/material.dart';

import 'AppColors.dart';

/// A utility class to provide the appropriate color palette based on the current theme (light or dark).
/// This class uses the [MediaQuery] to determine the brightness of the app's theme (light or dark mode)
/// and returns the respective color palette. It also allows for manual overrides with custom palettes.


class ThemeUtils {
  /// Returns the [ColorPalette] based on the current brightness (light or dark mode).
  ///
  /// This method uses [MediaQuery.of(context).platformBrightness] to check the system's brightness.
  ///
  /// Example usage:
  /// ```dart
  /// final colors = ThemeUtils.getPalette(context);
  /// print(colors.novaCoral); // Access a specific color from the palette.
  /// ```
  ///
  /// - [context]: The [BuildContext] to access [MediaQuery].
  ///
  /// Returns:
  /// - [lightColorPalette] if the brightness is light.
  /// - [darkColorPalette] if the brightness is dark.
  // Determine the palette based on brightness
  static ColorPalette getPalette(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark ? darkColorPalette : lightColorPalette;
  }

  /// Returns a custom [ColorPalette] based on the current brightness, with optional manual overrides.
  ///
  /// This method provides flexibility to supply custom light and dark palettes if desired.
  /// If no custom palettes are provided, it defaults to the standard [lightColorPalette] and [darkColorPalette].
  ///
  /// Example usage:
  /// ```dart
  /// final colors = ThemeUtils.getCustomPalette(
  ///   context: context,
  ///   customLightPalette: myLightPalette, // Optional
  ///   customDarkPalette: myDarkPalette,   // Optional
  /// );
  /// ```
  ///
  /// - [context]: The [BuildContext] to access [MediaQuery].
  /// - [customLightPalette]: A custom light theme [ColorPalette] (optional).
  /// - [customDarkPalette]: A custom dark theme [ColorPalette] (optional).
  ///
  /// Returns:
  /// - [customDarkPalette] if provided and the brightness is dark.
  /// - [customLightPalette] if provided and the brightness is light.
  /// - Defaults to [lightColorPalette] or [darkColorPalette] if no custom palettes are provided.

  // Optional: Allow manual override with a custom palette
  static ColorPalette getCustomPalette({
    required BuildContext context,
    ColorPalette? customLightPalette,
    ColorPalette? customDarkPalette,
  }) {
    final brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      return customDarkPalette ?? darkColorPalette;
    }
    return customLightPalette ?? lightColorPalette;
  }
}
