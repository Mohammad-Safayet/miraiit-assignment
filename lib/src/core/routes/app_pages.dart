import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miraiit_assignment/src/modules/category/category.dart';
import 'package:miraiit_assignment/src/modules/home/home.dart';
import 'package:miraiit_assignment/src/modules/home/infra/models/item.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/screen/items_detail_screen.dart';
import 'package:miraiit_assignment/src/modules/main/main_screen.dart';
import 'package:miraiit_assignment/src/modules/profile/profile.dart';
import 'package:miraiit_assignment/src/modules/shared/views/error_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

class CustomSlideTransition extends CustomTransitionPage<void> {
  CustomSlideTransition({super.key, required super.child})
      : super(
          transitionDuration: const Duration(
            milliseconds: 900,
          ),
          reverseTransitionDuration: const Duration(
            milliseconds: 900,
          ),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: animation.drive(
                Tween<Offset>(
                  begin: const Offset(1.5, 0),
                  end: Offset.zero,
                ).chain(
                  CurveTween(curve: Curves.easeInOutCirc),
                ),
              ),
              child: child,
            );
          },
        );
}

final router = GoRouter(
  initialLocation: "/",
  navigatorKey: _rootNavigatorKey,
  errorBuilder: (context, state) {
    final error = state.error;
    return ErrorScreen(
      error: error,
    );
  },
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/",
              builder: (context, state) => const HomeScreen(),
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: "details",
                  pageBuilder: (context, state) {
                    final item = state.extra as Item;

                    return CustomSlideTransition(
                      child: ItemDetailScreen(item: item),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: [
            GoRoute(
              path: "/category_page",
              builder: (context, state) => CategoryScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/profile_page",
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
