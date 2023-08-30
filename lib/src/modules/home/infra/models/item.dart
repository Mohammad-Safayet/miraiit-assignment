import 'package:miraiit_assignment/src/modules/category/infra/models/category.dart';
import 'package:miraiit_assignment/src/modules/home/infra/models/metric.dart';
import 'package:miraiit_assignment/src/modules/home/infra/models/discount.dart';

class Item {
  final int id;
  final String name;
  final double price;
  final String imgSrc;
  final Discount? discount;
  final Metric metric;
  final Category category;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.imgSrc,
    required this.metric,
    required this.category,
    this.discount,
  });
}
