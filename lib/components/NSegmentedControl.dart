import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/AppColors.dart';
import '../theme/AppTypography.dart';
import '../theme/ResponsiveUtil.dart';
import '../theme/ThemeUtils.dart';

/// A custom Segmented Control widget similar to a `TabBar` that allows
/// users to select between different segments with a smooth animation.
/// It supports both text and icon-based segments, as well as customizable
/// background and indicator colors.
///
/// Usage:
/// ```dart
/// SegmentedControl(
///   items: [
///     SegmentedControlItem(text: "Tab 1"),
///     SegmentedControlItem(text: "Tab 2"),
///   ],
///   selectedIndex: 0,
///   onIndexChanged: (index) {
///     // Handle index change
///   },
///   size: SegmentedControlSize.md,
///   tabBgColor: Colors.blue,
///   tabTextColor: Colors.white,
///   indicatorBgColor: Colors.white,
/// )
/// ```
/// Parameters:
/// - `items`: A list of `SegmentedControlItem` that can either have text or an icon (but not both). The widget will display them as segments.
/// - `selectedIndex`: The initial index that is selected when the widget is first displayed. This should be an integer that corresponds to the index in the `items` list.
/// - `onIndexChanged`: A callback function that will be triggered whenever the selected index is changed by the user.
/// - `size`: Specifies the size of the segmented control. Can be either `SegmentedControlSize.sm` (small) or `SegmentedControlSize.md` (medium).
/// - `tabBgColor`: The background color of the tab item. Defaults to light gray if not provided.
/// - `tabTextColor`: The color of the text on the tab. Defaults to black if not provided.
/// - `indicatorBgColor`: The background color of the indicator that highlights the selected tab. Defaults to white if not provided.
///
/// Notes:
/// - The widget automatically adapts to the size (either small or medium) based on the `size` parameter.
/// - Text and icon cannot be used simultaneously for a single item. You need to provide one or the other.
/// - This widget uses a `TabController` to manage the selection state and animation of the indicator.

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

class NSegmentedControl extends StatefulWidget {
  final List<SegmentedControlItem> items;
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;
  final SegmentedControlSize size;
  final Color? tabBgColor;
  final Color? tabTextColor;
  final Color? indicatorBgColor;

  const NSegmentedControl({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onIndexChanged,
    required this.size,
    this.tabBgColor,
    this.tabTextColor,
    this.indicatorBgColor,
  }) : assert(items.length > 1,
            "There must be at least 2 items in the segmented control");

  @override
  State<NSegmentedControl> createState() => _NSegmentedControlState();
}

class _NSegmentedControlState extends State<NSegmentedControl>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this,
        length: widget.items.length,
        initialIndex: widget.selectedIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSm = widget.size == SegmentedControlSize.sm;
    final typography = AppTypography.uiStyle(context);
    final ColorPalette colorPalette = ThemeUtils.getPalette(context);

    return Container(
      height: isSm ? ResponsiveUtils.height(40) : ResponsiveUtils.height(48),
      decoration: BoxDecoration(
        color: widget.tabBgColor ?? colorPalette.lightGray,
        borderRadius: BorderRadius.circular(ResponsiveUtils.radius(999)),
      ),
      child: TabBar(
        controller: _tabController,
        dividerHeight: 0,
        onTap: widget.onIndexChanged,
        padding: EdgeInsets.symmetric(
          vertical: ResponsiveUtils.width(4),
          horizontal: ResponsiveUtils.width(4),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        splashBorderRadius: BorderRadius.circular(ResponsiveUtils.radius(999)),
        indicator: BoxDecoration(
          color: widget.indicatorBgColor ?? colorPalette.pureWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(
              ResponsiveUtils.radius(999),
            ),
          ),
        ),
        tabs: List.generate(widget.items.length, (index) {
          final item = widget.items[index];

          final padding = item.text != null
              ? EdgeInsets.symmetric(
                  horizontal: isSm
                      ? ResponsiveUtils.width(8)
                      : ResponsiveUtils.width(16),
                  vertical: isSm
                      ? ResponsiveUtils.width(4)
                      : ResponsiveUtils.width(8),
                )
              : EdgeInsets.all(isSm ? 4.w : 8.w);

          return Tab(
            child: Container(
              padding: padding,
              child: item.text != null
                  ? Text(
                      item.text!,
                      style:
                          typography.sm.copyWith(fontWeight: FontWeight.w700),
                    )
                  : SizedBox(
                      height: ResponsiveUtils.height(24),
                      width: ResponsiveUtils.width(24),
                      child: item.icon,
                    ),
            ),
          );
        }),
      ),
    );
  }
}
