library sbadgeview;

import 'package:flutter/material.dart';

class SBadgeView extends StatelessWidget {
  /// A view widget that showing the count of notifications or any important statusses in a beautiful way as a badge.
  const SBadgeView({
    super.key,
    required this.content,
    required this.badgeCount,
    this.badgeColor = Colors.black,
    this.badgeColorOpacity = 0.5,
    this.badgePadding = const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
    this.badgeBorderRadius = 18,
  });

  /// The [content] of the badge to be displayed on.
  /// it can be any widget of <b>TextButton</b>, <b>IconButton</b> or else..
  final Widget content;

  /// The [badgeCount] of the badge to be displayed.
  /// it can be any number of notifications or items or important steps..
  final int badgeCount;

  /// [badgeColor] of the badge to be displayed.
  /// represents the color of the badge to be displayed.
  final EdgeInsets badgePadding;

  /// [badgeColorOpacity] of the badge to be displayed.
  /// represents the opacity of the badge color to be displayed.
  final Color badgeColor;

  /// [badgePadding] of the badge to be displayed.
  /// to manage the padding of the badge to be displayed.
  final double badgeColorOpacity;

  /// [badgeBorderRadius] of the badge to be displayed.
  /// controls the border radius of the badge to be displayed.
  final double badgeBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        content,
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            padding: badgePadding,
            decoration: BoxDecoration(
              color: badgeColor.withOpacity(badgeColorOpacity),
              borderRadius: BorderRadius.circular(badgeBorderRadius),
            ),
            child: Center(
              child: Text(
                '$badgeCount',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: Colors.white,
                      fontSizeFactor: 0.75,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
