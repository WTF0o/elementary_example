import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/presentation/screen/app/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import 'app/di_app.dart';

void main() async {
  configureDependencies();
  await Hive.initFlutter();
  Hive.registerAdapter(AdvertAdapter());
  runApp(const AppScreen());
}
