import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/AppColors.dart';
import '../theme/AppTypography.dart';
import '../theme/ResponsiveUtil.dart';
import '../theme/ThemeUtils.dart';

class SegmentedControlItem {
  final String? text;
  final Widget? icon;

  SegmentedControlItem({this.text, this.icon})
      : assert(text != null || icon != null,
            "Either text or icon must be provided"),
        assert(
            !(text != null && icon != null), "Cannot use both text and icon");
}

enum SegmentedControlSize { sm, md }

class SegmentedControl extends StatelessWidget {
  final List<SegmentedControlItem> items;
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;
  final SegmentedControlSize size;
  final Color? itemBgColor;
  final Color? itemTextColor;
  final Color? controlBgColor;

  const SegmentedControl({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onIndexChanged,
    required this.size,
    this.itemBgColor,
    this.itemTextColor,
    this.controlBgColor,
  }) : assert(items.length > 1,
            "There must be at least 2 items in the segmented control");

  @override
  Widget build(BuildContext context) {
    final isSm = size == SegmentedControlSize.sm;

    final typography = AppTypography.uiStyle(context);

    final ColorPalette colorPalette = ThemeUtils.getPalette(context);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: ResponsiveUtils.width(4),
          horizontal: ResponsiveUtils.width(4)),
      decoration: BoxDecoration(
        color: controlBgColor ?? colorPalette.lightGray,
        borderRadius: BorderRadius.circular(999.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isSelected = index == selectedIndex;

          // Determine padding and shape
          final padding = item.text != null
              ? EdgeInsets.symmetric(
                  horizontal: isSm
                      ? ResponsiveUtils.width(8)
                      : ResponsiveUtils.width(16),
                  vertical: isSm
                      ? ResponsiveUtils.width(4)
                      : ResponsiveUtils.width(8),
                )
              : EdgeInsets.all(isSm ? 4.r : 16.r);

          final shape = item.text != null
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999.r),
                )
              : const CircleBorder();

          return Material(
            color:
                isSelected ? (itemBgColor ?? Colors.blue) : Colors.transparent,
            shape: shape,
            child: InkWell(
              onTap: () => onIndexChanged(index),
              borderRadius: shape is RoundedRectangleBorder
                  ? shape.borderRadius.resolve(TextDirection.ltr)
                  : BorderRadius.circular(999),
              child: Container(
                padding: padding,
                alignment: Alignment.center,
                child: item.text != null
                    ? Text(
                        item.text!,
                        style: typography.sm.copyWith(
                            color:
                                (itemTextColor ?? colorPalette.midnightBlack)),
                      )
                    : SizedBox(
                        height: ResponsiveUtils.height(24),
                        width: ResponsiveUtils.width(24),
                        child: item.icon,
                      ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
