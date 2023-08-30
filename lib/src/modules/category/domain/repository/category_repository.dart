import 'package:miraiit_assignment/src/modules/category/infra/datasources/catagory_datasource.dart';
import 'package:miraiit_assignment/src/modules/category/infra/models/category.dart';

class CategoryRepository {

  final CategoryDatasource datasource;

  CategoryRepository({
    required this.datasource,
  });

  List<Category> provideFakeData() {
    return datasource.provideList();
  }
}
