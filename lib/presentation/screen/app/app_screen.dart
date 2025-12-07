import 'package:elementary_test/app/di_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: getIt<GoRouter>());
  }
}
