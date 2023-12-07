library sbadgeview;

import 'package:flutter/material.dart';

class SBadgeView extends StatelessWidget {
  const SBadgeView({
    super.key,
    required this.content,
    required this.badgeCount,
    this.badgeColor = Colors.black,
    this.badgeColorOpacity = 0.5,
    this.badgePadding = const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
    this.badgeBorderRadius = 18,
  });

  final Widget content;
  final int badgeCount;
  final EdgeInsets badgePadding;
  final Color badgeColor;
  final double badgeColorOpacity;
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
