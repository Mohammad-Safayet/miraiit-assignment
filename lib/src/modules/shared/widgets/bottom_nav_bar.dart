import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miraiit_assignment/src/core/constants/app_color.dart';
import 'package:miraiit_assignment/src/modules/shared/widgets/bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.onBackground,
      onTap: _onTap,
      backgroundColor: AppColors.background,
      currentIndex: navigationShell.currentIndex,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Home",
          backgroundColor: Colors.transparent,
          icon: BottomNavItem(
            icon: Icons.home,
            text: "Home",
            isActive: navigationShell.currentIndex == 0,
          ),
        ),
        BottomNavigationBarItem(
          label: "Category",
          icon: BottomNavItem(
            icon: Icons.category_rounded,
            text: "Category",
            isActive: navigationShell.currentIndex == 1,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: BottomNavItem(
            icon: Icons.person,
            text: "Profile",
            isActive: navigationShell.currentIndex == 2,
          ),
        ),
      ],
    );
  }

  Widget buildMarker(
    bool isActive,
    Widget child,
  ) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          top: -10,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.rectangle,
            ),
          ),
        ),
      ],
    );
  }
}
