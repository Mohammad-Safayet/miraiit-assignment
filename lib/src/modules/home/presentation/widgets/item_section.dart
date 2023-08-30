import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/core/constants/app_values.dart';
import 'package:miraiit_assignment/src/core/constants/text_styles.dart';
import 'package:miraiit_assignment/src/modules/category/infra/models/category.dart';
import 'package:miraiit_assignment/src/modules/category/presentation/widgets/category_card.dart';
import 'package:miraiit_assignment/src/modules/home/infra/models/item.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/widgets/item_card.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({
    Key? key,
    this.name,
    required this.items,
    required this.height,
  }) : super(key: key);

  final String? name;
  final List items;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppValues.margin,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppValues.padding,
      ),
      height: height,
      child: Column(
        children: [
          // Name
          (name == null)
              ? Container()
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        name!,
                        style: AppTextStyles.title,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "See all",
                            style: AppTextStyles.buttonSubTitle,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: AppValues.iconSize_18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),

          // Items
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: AppValues.padding_8,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  if (item is Category) {
                    return CategoryCard(category: item);
                  } else if (item is Item) {
                    return ItemCard(
                      item: item,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
