import 'package:flutter/material.dart';
import 'package:miraiit_assignment/src/core/constants/app_color.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.isActive,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: (isActive) ? AppColors.primary : AppColors.background,
            width: 3.0,
          ),
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 28.0,
            color: (isActive) ? AppColors.primary : AppColors.onBackground,
          ),
          Text(
            text,
            style: TextStyle(
              color: (isActive) ? AppColors.primary : AppColors.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
