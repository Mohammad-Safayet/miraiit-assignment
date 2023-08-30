import 'package:flutter/material.dart';
import 'package:miraiit_assignment/src/core/constants/app_color.dart';
import 'package:miraiit_assignment/src/core/constants/app_values.dart';
import 'package:miraiit_assignment/src/modules/shared/widgets/award_icon.dart';
import 'package:miraiit_assignment/src/modules/shared/widgets/custom_search_bar.dart';

class ApplicationBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.background,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          size: AppValues.iconSize,
        ),
        onPressed: () {},
      ),
      title: title(),
      actions: [
        Container(
          margin: const EdgeInsets.only(
            right: 16.0,
          ),
          child: Center(
            child: AwardIcon(),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;

  Widget title() {
    return CustomSearchBar(
      leading: Icon(
        Icons.search_rounded,
        size: AppValues.iconSize,
        color: AppColors.onBackground,
      ),
      trailing: [
        IconButton(
          icon: Icon(
            Icons.mic_none,
            size: AppValues.iconSize,
            color: AppColors.primary,
          ),
          onPressed: () {},
        ),
      ],
      height: AppBar().preferredSize.height * 0.7,
      width: AppBar().preferredSize.width * 0.7,
    );
  }
}
