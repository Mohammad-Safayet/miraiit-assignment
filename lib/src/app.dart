import 'package:flutter/material.dart';
import 'package:miraiit_assignment/src/core/routes/app_pages.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "Gilroy",
      ),
      routerConfig: router,
    );
  }
}
