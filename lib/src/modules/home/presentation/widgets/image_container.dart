import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/core/constants/app_color.dart';
import 'package:miraiit_assignment/src/core/constants/app_values.dart';
import 'package:miraiit_assignment/src/core/constants/text_styles.dart';
import 'package:miraiit_assignment/src/modules/home/infra/models/discount.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({
    Key? key,
    this.discount,
  }) : super(key: key);

  final Discount? discount;

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool isFavorite = false;

  void changeFavoriteState() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 120,
      width: 180,
      margin: const EdgeInsets.only(
        top: AppValues.margin_8,
        left: AppValues.margin_8,
        right: AppValues.margin_8,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Center(
              child: Image.asset(
                "assets/cooking.png",
                height: 120,
                width: 120,
              ),
            ),
          ),
          if (widget.discount != null)
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: AppColors.primary.withOpacity(0.2),
                height: 35,
                width: 35,
                margin: const EdgeInsets.all(AppValues.margin_8),
                child: Center(
                  child: Text(
                    "${widget.discount!.percentage}%",
                    style: AppTextStyles.discountTag,
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                changeFavoriteState();
              },
              icon: Icon(
                (isFavorite) ? Icons.favorite : Icons.favorite_outline,
                color: (isFavorite) ? Colors.red : AppColors.onBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}