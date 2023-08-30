import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/modules/home/domain/repositories/home_repository.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/widgets/item_section.dart';

class HotItemView extends StatelessWidget {
  const HotItemView({
    Key? key,
    required this.homeRepository,
  }) : super(key: key);

  /// The repository responsible for providing new arrival item data.
  final HomeRepository homeRepository;

  @override
  Widget build(BuildContext context) {
    final items = homeRepository.getItems();

    return ItemSection(
      name: "Hot items",
      items: items,
      height: 320,
    );
  }
}
