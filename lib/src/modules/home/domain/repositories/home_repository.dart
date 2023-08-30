import 'package:miraiit_assignment/src/modules/home/domain/fake_data.dart';
import 'package:miraiit_assignment/src/modules/home/infra/datasource/local_datasource.dart';
import 'package:miraiit_assignment/src/modules/home/infra/models/item.dart';

class HomeRepository {
  final LocalDatasource localDatasource;

  HomeRepository({
    required this.localDatasource,
  });

  Future<List> readJson() async {
    final list = await localDatasource.readJson("stories_data.json");

    return list;
  }

  List<Item> getItems() {
    return items;
  }

  List<Item> getDiscountItems() {
    final list = items.where((element) => element.discount != null).toList();

    return list;
  }
}
