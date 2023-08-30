import 'package:flutter/material.dart';

import 'package:miraiit_assignment/src/modules/home/domain/repositories/home_repository.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/widgets/item_section.dart';

/// A widget that displays a section of new arrival items.
///
/// This widget is used to showcase a specific section of new arrival items
/// within the e-commerce app's homepage. It fetches the list of new arrival
/// items from the provided [homeRepository] and displays them in a horizontal
/// scrollable format using the [ItemSection] widget.
class NewArrivalView extends StatelessWidget {
  const NewArrivalView({
    Key? key,
    required this.homeRepository,
  }) : super(key: key);

  /// The repository responsible for providing new arrival item data.
  final HomeRepository homeRepository;

  @override
  Widget build(BuildContext context) {
    final items = homeRepository.getItems();

    return ItemSection(
      name: "New Arrivals",
      items: items,
      height: 320,
    );
  }
}
