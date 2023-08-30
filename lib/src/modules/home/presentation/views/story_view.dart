import 'package:flutter/material.dart';
import 'package:miraiit_assignment/src/core/constants/app_color.dart';
import 'package:miraiit_assignment/src/core/constants/app_values.dart';

import 'package:miraiit_assignment/src/modules/home/domain/repositories/home_repository.dart';

class StroyView extends StatefulWidget {
  const StroyView({
    Key? key,
    required this.repository,
  }) : super(key: key);

  final HomeRepository repository;

  @override
  State<StroyView> createState() => _StroyViewState();
}

class _StroyViewState extends State<StroyView> {
  late Future<List> _data;

  @override
  void initState() {
    super.initState();
    _data = widget.repository.readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: AppValues.margin),
      child: FutureBuilder(
        future: _data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                final String link = data[index];

                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: AppValues.margin,
                  ),
                  child: Image.network(
                    link,
                    loadingBuilder: (
                      BuildContext context,
                      Widget child,
                      ImageChunkEvent? loadingProgress,
                    ) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primary,
                          ),
                        );
                      }
                    },
                    errorBuilder: (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return Image.asset(
                        'assets/No-Image.png',
                      ); // Display error image
                    },
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
