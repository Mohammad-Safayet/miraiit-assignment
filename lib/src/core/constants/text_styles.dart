import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/core/constants/app_color.dart';

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );

  static const subTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static const cardTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static const cardSubTitle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.onBackground,
  );

  static const discountTag = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w800,
    fontSize: 16.0,
  );

  static const oldPriceTag = TextStyle(
    color: AppColors.onBackground,
    fontWeight: FontWeight.w300,
    fontSize: 16.0,
    decoration: TextDecoration.lineThrough,
    decorationStyle: TextDecorationStyle.solid,
    decorationColor: AppColors.onBackground,
  );

  static const priceTag = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w800,
    fontSize: 18.0,
  );

  static const buttonTitle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );

  static const buttonSubTitle = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
}
