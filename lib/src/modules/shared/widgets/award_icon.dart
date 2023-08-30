import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:miraiit_assignment/src/core/constants/app_color.dart';
import 'package:miraiit_assignment/src/core/constants/app_values.dart';

class AwardIcon extends StatelessWidget {
  const AwardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeContent: Text(
        "1k",
      ),
      badgeStyle: badges.BadgeStyle(
        badgeColor: AppColors.primary,
      ),
      child: Icon(
        Icons.emoji_events_outlined,
        size: AppValues.iconSize,
      ),
    );
  }
}
