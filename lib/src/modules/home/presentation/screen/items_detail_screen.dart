import 'package:flutter/material.dart';
import 'package:miraiit_assignment/src/core/constants/app_values.dart';

import 'package:miraiit_assignment/src/modules/home/infra/models/item.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/cooking.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                item.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text('Price: \$${item.price.toStringAsFixed(2)}'),
              const SizedBox(height: 10),
              Text('Metric: ${item.metric.name} (${item.metric.amount})'),
              const SizedBox(height: 10),
              if (item.discount != null)
                Text('Discount: ${item.discount!.percentage}% off'),
            ],
          ),
        ),
      ),
    );
  }
}
