import 'package:miraiit_assignment/src/modules/category/infra/models/category.dart';

class CategoryDatasource {
  List<Category> _getData() {
    final list = [
      Category(
        id: 0,
        name: "Cooking",
        imgUrl: "cooking.png",
      ),
      Category(
        id: 1,
        name: "Meat & Fish",
        imgUrl: "meat-fist.png",
      ),
      Category(
        id: 2,
        name: "Masala & Spice",
        imgUrl: "masala-spice.png",
      ),
      Category(
        id: 3,
        name: "Masala & Spice",
        imgUrl: "masala-spice.png",
      ),
      Category(
        id: 4,
        name: "Utensils",
        imgUrl: "masala-spice.png",
      ),
    ];

    return list;
  }

  List<Category> provideList() {
    final list = _getData();

    return list;
  }
}
