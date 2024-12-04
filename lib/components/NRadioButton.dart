import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../theme/AppTypography.dart';
import '../theme/ResponsiveUtil.dart';
import '../theme/ThemeUtils.dart';

class NRadioButton extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;
  final double? size; // Size of the radio button
  final String? label; // Text label for the radio button
  final Color? selectedColor;
  final Color? unselectedColor;

  const NRadioButton({
    required this.selected,
    required this.onTap,
    this.label,
    this.size,
    this.selectedColor,
    this.unselectedColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typography = AppTypography.uiStyle(context);
    final ColorPalette colorPalette = ThemeUtils.getPalette(context);
    final Color finalSelectedColor = selectedColor ?? colorPalette.electricBlue;
    final Color finalUnSelectedColor = unselectedColor ?? colorPalette.graphite;

    final radioSize = size ?? ResponsiveUtils.width(16);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Radio Button
          Padding(
            padding: EdgeInsets.all(ResponsiveUtils.width(4)),
            child: SizedBox(
              height: ResponsiveUtils.width(radioSize),
              width: ResponsiveUtils.width(radioSize),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Outer Circle (Border)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: selected
                            ? finalSelectedColor
                            : finalUnSelectedColor,
                        width: ResponsiveUtils.width(1.5),
                      ),
                    ),
                  ),
                  // Inner Filled Circle
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: selected ? finalSelectedColor : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    height: ResponsiveUtils.width(radioSize * 0.5),
                    width: ResponsiveUtils.width(radioSize * 0.5),
                  ),
                ],
              ),
            ),
          ),
          label != null
              ? Row(
                  children: [
                    SizedBox(width: ResponsiveUtils.width(8)),
                    // Spacing between button and text
                    // Text Label
                    Text(
                      label!,
                      style:
                          typography.sm.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
