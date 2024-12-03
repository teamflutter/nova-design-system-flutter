import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../theme/AppTypography.dart';
import '../theme/ResponsiveUtil.dart';
import '../theme/ThemeUtils.dart';

/// Enum for Avatar Sizes
enum AvatarSize { xs, sm, md, lg, xl, xl2 }

/// Extension to map sizes to AvatarSize
extension AvatarSizeExtension on AvatarSize {
  double get size {
    switch (this) {
      case AvatarSize.xs:
        return 24;
      case AvatarSize.sm:
        return 32;
      case AvatarSize.md:
        return 40;
      case AvatarSize.lg:
        return 48;
      case AvatarSize.xl:
        return 56;
      case AvatarSize.xl2:
        return  64;
    }
  }
}

extension AvatarIndicatorExtension on AvatarSize {
  double get indicatorSize {
    switch (this) {
      case AvatarSize.xs:
        return 8;
      case AvatarSize.sm:
        return 10;
      case AvatarSize.md:
        return 12;
      case AvatarSize.lg:
        return 14;
      case AvatarSize.xl:
        return 16;
      case AvatarSize.xl2:
        return  18;
    }
  }
}

/// Enum for Badge Position
enum BadgePosition { topStart, topEnd, bottomStart, bottomEnd }

/// Avatar Style configuration
class AvatarStyle {
  final AvatarSize size;
  final Color? fillColor;
  final Color? fontColor;
  final double? badgeOuterStrokeThickness;
  final Color? badgeOuterStrokeColor;
  final Color? badgeColor;
  final BadgePosition badgePosition;

  AvatarStyle({
    this.size = AvatarSize.md,
    this.fillColor,
    this.fontColor,
    this.badgeOuterStrokeThickness,
    this.badgeOuterStrokeColor,
    this.badgeColor,
    this.badgePosition = BadgePosition.topEnd,
  });
}

/// Avatar Widget
class NAvatar extends StatelessWidget {
  final AvatarStyle avatarStyle;
  final String? textContent;
  final Widget? imageContent;

  const NAvatar({
    super.key,
    required this.avatarStyle,
    this.textContent,
    this.imageContent,
  }): assert(!(textContent != null && imageContent != null),
  'Avatar can have either image content or text content, not both.'),
        assert((textContent != null || imageContent != null),
        'Avatar must have at least one non-null content (text or image).');

  Alignment getBadgeAlignment(BadgePosition position) {
    switch (position) {
      case BadgePosition.topStart:
        return Alignment.topLeft;
      case BadgePosition.topEnd:
        return Alignment.topRight;
      case BadgePosition.bottomStart:
        return Alignment.bottomLeft;
      case BadgePosition.bottomEnd:
        return Alignment.bottomRight;
    }
  }

  TextStyle getFontSizeForAvatar(BuildContext context, AvatarSize size) {
    switch (size) {
      case AvatarSize.xs:
        return AppTypography.uiStyle(context).xs2;
      case AvatarSize.sm:
        return AppTypography.uiStyle(context).xs;
      case AvatarSize.md:
        return AppTypography.uiStyle(context).sm;
      case AvatarSize.lg:
        return AppTypography.uiStyle(context).md;
      case AvatarSize.xl:
        return AppTypography.uiStyle(context).md;
      case AvatarSize.xl2:
        return AppTypography.uiStyle(context).xl;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ThemeUtils.getPalette(context);
    final double avatarSize = avatarStyle.size.size;

    final double indicatorSize = avatarStyle.size.indicatorSize;

    final Color fillColor = avatarStyle.fillColor ?? colorPalette.pureWhite;
    final TextStyle textStyle = getFontSizeForAvatar(context,avatarStyle.size).copyWith(
        color: avatarStyle.fontColor ?? colorPalette.midnightBlack,
        fontWeight: FontWeight.w700);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: ResponsiveUtils.width(avatarSize),
          height: ResponsiveUtils.height(avatarSize),
          decoration: BoxDecoration(
            color: fillColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: ClipOval(
            child: imageContent ?? (textContent != null
                ? Text(textContent!, style: textStyle)
                : null),
          )
        ),
        if (avatarStyle.badgeColor != null)
          Positioned(
            top: avatarStyle.badgePosition == BadgePosition.topStart ||
                    avatarStyle.badgePosition == BadgePosition.topEnd
                ? ResponsiveUtils.height(0)
                : null,
            bottom: avatarStyle.badgePosition == BadgePosition.bottomStart ||
                    avatarStyle.badgePosition == BadgePosition.bottomEnd
                ? ResponsiveUtils.height(0)
                : null,
            left: avatarStyle.badgePosition == BadgePosition.topStart ||
                    avatarStyle.badgePosition == BadgePosition.bottomStart
                ? ResponsiveUtils.height(0)
                : null,
            right: avatarStyle.badgePosition == BadgePosition.topEnd ||
                    avatarStyle.badgePosition == BadgePosition.bottomEnd
                ? ResponsiveUtils.height(-4)
                : null,
            child: Container(
              width: ResponsiveUtils.width(indicatorSize),
              height: ResponsiveUtils.height(indicatorSize),
              decoration: BoxDecoration(
                color: avatarStyle.badgeColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: avatarStyle.badgeOuterStrokeColor ?? colorPalette.lightGray,
                  width:ResponsiveUtils.width(avatarStyle.badgeOuterStrokeThickness ?? 2),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
