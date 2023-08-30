import 'package:flutter/material.dart';
import 'package:miraiit_assignment/src/modules/category/domain/repository/category_repository.dart';
import 'package:miraiit_assignment/src/modules/category/infra/datasources/catagory_datasource.dart';
import 'package:miraiit_assignment/src/modules/home/domain/repositories/home_repository.dart';
import 'package:miraiit_assignment/src/modules/home/infra/datasource/local_datasource.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/views/ad_view.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/views/category_view.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/views/discount_view.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/views/hot_item_view.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/views/new_arrivals_view.dart';
import 'package:miraiit_assignment/src/modules/home/presentation/views/story_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalDatasource localDatasource = LocalDatasource();
    final HomeRepository homeRepository = HomeRepository(
      localDatasource: localDatasource,
    );

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Stories
            StroyView(repository: homeRepository),
            // Categories
            CategoryView(
              categoryRepository: CategoryRepository(
                datasource: CategoryDatasource(),
              ),
            ),
            // Discount itmes
            DiscountView(
              homeRepository: homeRepository,
            ),
            // Hot items
            HotItemView(
              homeRepository: homeRepository,
            ),

            // ADs
            AdView(),

            // New arrivals
            NewArrivalView(
              homeRepository: homeRepository,
            ),
          ],
        ),
      ),
    );
  }
}
