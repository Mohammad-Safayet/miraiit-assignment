import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/modules/category/domain/repository/category_repository.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/widgets/item_section.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key,
    required this.categoryRepository,
  }) : super(key: key);

  final CategoryRepository categoryRepository;

  @override
  Widget build(BuildContext context) {
    final items = categoryRepository.provideFakeData();

    return ItemSection(
      name: "Categories",
      items: items,
      height: 220,
    );
  }
}
