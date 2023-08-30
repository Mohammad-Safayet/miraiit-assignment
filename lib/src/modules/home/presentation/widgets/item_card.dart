import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:miraiit_assignment/src/core/constants/app_color.dart';

import 'package:miraiit_assignment/src/core/constants/app_values.dart';
import 'package:miraiit_assignment/src/core/constants/text_styles.dart';
import 'package:miraiit_assignment/src/modules/home/infra/models/item.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/widgets/image_container.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(
      decimalDigits: 0,
    );

    return InkWell(
      onTap: () {
        print("object");
        context.go(
          "/details",
          extra: item,
        );
      },
      child: Container(
        height: 220,
        width: 180,
        color: AppColors.cardBackgroundColor,
        margin: const EdgeInsets.symmetric(horizontal: AppValues.margin_8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ImageContainer(
              discount: item.discount,
            ),
            const SizedBox(
              height: 8.0,
            ),

            // name
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: AppValues.margin_8),
              child: Text(
                item.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.cardTitle,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            // amount
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: AppValues.margin_8),
              child: Text(
                "${item.metric.amount}${item.metric.name}",
                style: AppTextStyles.cardSubTitle,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),

            // price
            Container(
              margin: const EdgeInsets.only(left: AppValues.margin_8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      (item.discount != null)
                          ? Text(
                              formatCurrency.format(item.discount!.price),
                              style: AppTextStyles.priceTag,
                            )
                          : Text(
                              formatCurrency.format(item.price),
                              style: AppTextStyles.priceTag,
                            ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      (item.discount == null)
                          ? Text("")
                          : Text(
                              formatCurrency.format(item.price),
                              style: AppTextStyles.oldPriceTag,
                            ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      color: AppColors.primary,
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.add,
                        color: AppColors.background,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
