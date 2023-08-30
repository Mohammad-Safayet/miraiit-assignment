import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    Key? key,
    this.error,
  }) : super(key: key);

  final GoException? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("An error occured."),
      ),
    );
  }
}
