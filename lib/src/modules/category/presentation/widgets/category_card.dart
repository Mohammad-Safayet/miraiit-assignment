import 'package:flutter/material.dart';
import 'package:miraiit_assignment/src/core/constants/app_color.dart';

import 'package:miraiit_assignment/src/core/constants/app_values.dart';
import 'package:miraiit_assignment/src/core/constants/text_styles.dart';
import 'package:miraiit_assignment/src/modules/category/infra/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppValues.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: AppColors.primary.withOpacity(0.2),
            height: 120,
            width: 150,
            child: Image.asset(
              "assets/cooking.png",
              height: 100,
              width: 125,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              category.name,
              style: AppTextStyles.subTitle,
            ),
          ),
        ],
      ),
    );
  }
}
