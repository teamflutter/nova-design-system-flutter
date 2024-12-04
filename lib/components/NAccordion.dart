import 'package:flutter/material.dart';

import '../theme/AppTypography.dart';
import '../theme/ResponsiveUtil.dart';

enum AccordionTextStyle {
  xs,
  md,
  lg,
  xl,
}

class AccordionStyle {
  final Color? bgColor; // Background color
  final bool showDividerOnExpand; // Whether to show a divider when expanded
  final Widget? rightExpandIcon; // Optional expand/collapse icon
  final double? horizontalPadding; // Horizontal padding
  final double? verticalPadding; // Vertical padding
  final Widget? prefixIcon; // Optional prefix icon
  final AccordionTextStyle textStyle; // Text style size
  final double? borderRadius; // Border radius

  const AccordionStyle({
    this.bgColor,
    this.showDividerOnExpand = true,
    this.rightExpandIcon,
    this.horizontalPadding,
    this.verticalPadding,
    this.prefixIcon,
    this.textStyle = AccordionTextStyle.md,
    this.borderRadius,
  });
}

class NAccordion extends StatefulWidget {
  final AccordionStyle style;
  final String header;
  final TextStyle? optionalTextStyle; // Override text style
  final Widget hiddenContent;

  const NAccordion({
    required this.style,
    required this.header,
    this.optionalTextStyle,
    required this.hiddenContent,
    super.key,
  });

  @override
  State<NAccordion> createState() => _NAccordionState();
}

class _NAccordionState extends State<NAccordion>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
      isExpanded
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  TextStyle _getTextStyle(BuildContext context) {
    final uiStyle = AppTypography.uiStyle(context);
    final textStyle = widget.optionalTextStyle ??
        ({
          AccordionTextStyle.xs: uiStyle.xs,
          AccordionTextStyle.md: uiStyle.md,
          AccordionTextStyle.lg: uiStyle.lg,
          AccordionTextStyle.xl: uiStyle.xl,
        })[widget.style.textStyle]!;

    return textStyle;
  }

  @override
  Widget build(BuildContext context) {
    final style = widget.style;
    final textStyle = _getTextStyle(context);

    final hPadding = widget.style.horizontalPadding ?? ResponsiveUtils.width(8);
    final vPadding =  widget.style.verticalPadding ?? ResponsiveUtils.width(8);
    final circularRadius =  widget.style.borderRadius ?? ResponsiveUtils.radius(8);
    return Container(
      decoration: BoxDecoration(
        color: style.bgColor ?? Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(ResponsiveUtils.radius(circularRadius)),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: _toggleExpansion,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveUtils.width(hPadding),
                vertical: ResponsiveUtils.height(vPadding),
              ),
              child: Row(
                children: [
                  if (style.prefixIcon != null)
                    Padding(
                      padding: EdgeInsets.only(right: ResponsiveUtils.width(8)),
                      child: style.prefixIcon!,
                    ),
                  Expanded(
                    child: Text(
                      widget.header,
                      style: textStyle,
                    ),
                  ),
                  if (style.rightExpandIcon != null)
                    RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: 0.5)
                          .animate(_animationController),
                      child: style.rightExpandIcon,
                    ),
                ],
              ),
            ),
          ),
          if (isExpanded && style.showDividerOnExpand)
            Divider(
              color: Colors.grey[300],
              height: ResponsiveUtils.height(1),
            ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child: isExpanded
                ? Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveUtils.width(hPadding),
                vertical: ResponsiveUtils.height(vPadding),
              ),
              child: widget.hiddenContent,
            )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
