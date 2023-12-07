library sbadge_view;

import 'package:flutter/material.dart';

class SBadgeView extends StatelessWidget {
  const SBadgeView({super.key, this.contentIcon, this.contentText, this.contentColor  = Colors.white});

  final IconData? contentIcon;
  final String? contentText;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(icon, color: EColors.white)),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            decoration: BoxDecoration(
              color: EColors.block.withOpacity(0.5),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Text(
                '123',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: EColors.white,
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
