import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/theme/ResponsiveUtil.dart';

import '../theme/AppColors.dart';
import '../theme/AppTypography.dart';
import '../theme/ThemeUtils.dart';

class NMenuItem extends StatelessWidget {
  final String label;
  final bool multiline;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool selected;
  final bool disabled;
  final double iconSize;

  const NMenuItem({
    super.key,
    required this.label,
    this.multiline = false,
    this.leading,
    this.trailing,
    this.onTap,
    this.selected = false,
    this.disabled = false,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTypography.uiStyle(context);
    final ColorPalette colorPalette = ThemeUtils.getPalette(context);

    // Colors based on states
    final backgroundColor = colorPalette.pureWhite;
    final textColor =
        disabled ? colorPalette.midnightBlack : colorPalette.midnightBlack;

    return Material(
      borderRadius: BorderRadius.circular(ResponsiveUtils.radius(8)),
      color: disabled
          ? colorPalette.pureWhite.withOpacity(0.1)
          : backgroundColor, // Ensures the InkWell shows correctly
      child: InkWell(
        onTap: disabled ? null : onTap,
        splashColor: disabled ? Colors.transparent : colorPalette.lightGray,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveUtils.width(16),
              vertical: ResponsiveUtils.height(8)),
          decoration: BoxDecoration(
            color: selected ?backgroundColor : null ,
            borderRadius: BorderRadius.circular(ResponsiveUtils.radius(8)),
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: const Color(0x334E46B4),
                      // #4E46B433 in ARGB format (33 is 20% opacity)
                      offset: const Offset(0, 0),
                      // x-offset and y-offset are 0
                      blurRadius: 0,
                      // No blur
                      spreadRadius: ResponsiveUtils.radius(
                          4), // Equivalent to the spread radius
                    )
                  ]
                : null, // No shadow when not selected
          ),
          child: Row(
            children: [
              if (leading != null) ...[
                SizedBox(width: iconSize, height: iconSize, child: leading),
                SizedBox(width: ResponsiveUtils.width(8)),
              ],
              Expanded(
                child: Text(
                  label,
                  maxLines: multiline ? 2 : 1,
                  style: typography.md.copyWith(
                    color: textColor,
                  ),
                ),
              ),
              if (trailing != null)
                SizedBox(width: iconSize, height: iconSize, child: trailing),
            ],
          ),
        ),
      ),
    );
  }
}
