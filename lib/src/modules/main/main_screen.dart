import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:miraiit_assignment/src/core/constants/app_color.dart';
import 'package:miraiit_assignment/src/modules/shared/widgets/application_bar.dart';
import 'package:miraiit_assignment/src/modules/shared/widgets/bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return annotatedRegion(context);
  }

  Widget annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: AppColors.background,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        color: Colors.transparent,
        child: pageScaffold(context),
      ),
    );
  }

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const ApplicationBar(),
      body: SafeArea(
        child: navigationShell,
      ),
      bottomNavigationBar: BottomNavBar(
        navigationShell: navigationShell,
      ),
    );
  }
}
