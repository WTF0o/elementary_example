import 'package:elementary_test/app/di_app.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  GetIt.I.init();
}

@module
abstract class DiApp {
  @singleton
  Talker get talker => TalkerFlutter.init();
}
