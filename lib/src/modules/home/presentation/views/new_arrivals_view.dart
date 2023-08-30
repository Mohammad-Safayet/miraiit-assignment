import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/modules/home/domain/repositories/home_repository.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/widgets/item_section.dart';

class NewArrivalView extends StatelessWidget {
  const NewArrivalView({
    Key? key,
    required this.homeRepository,
  }) : super(key: key);

  final HomeRepository homeRepository;

  @override
  Widget build(BuildContext context) {
    final items =  homeRepository.getItems();

    return ItemSection(
      name: "New Arrivals",
      items: items,
      height: 320,
    );
  }
}
