import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/core/constants/app_color.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    Key? key,
    this.leading,
    this.trailing,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Widget? leading;
  final List<Widget>? trailing;
  final double height;
  final double width;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final searchTextContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: searchTextContoller,
      elevation: const MaterialStatePropertyAll(0.0),
      backgroundColor: const MaterialStatePropertyAll(
        AppColors.searchBarColor,
      ),
      constraints: BoxConstraints(
        minWidth: widget.width,
        minHeight: widget.height,
      ),
      shape: MaterialStateProperty.all(
        const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
      leading: widget.leading,
      trailing: widget.trailing,
    );
  }
}
