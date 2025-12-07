import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class IDatabaseService {
  Future<T?> getValue<T>(String boxName, String key);
  Future<List<dynamic>> getValues(String boxName);
  Future<void> setValue<T>(String boxName, String key, T value);
  Future<void> removeValue(String boxName, String key);
  Future<void> clearBox(String boxName);
  Future<Stream<BoxEvent>> listenBox(String boxName);
}

@Singleton(as: IDatabaseService)
class HiveService implements IDatabaseService {
  @override
  Future<T?> getValue<T>(String boxName, String key) async {
    final box = await Hive.openBox(boxName);
    final value = box.get(key) as T?;

    return value;
  }

  @override
  Future<void> setValue<T>(String boxName, String key, T value) async {
    final box = await Hive.openBox(boxName);
    await box.put(key, value);
  }

  @override
  Future<void> removeValue(String boxName, String key) async {
    final box = await Hive.openBox(boxName);
    await box.delete(key);
  }

  @override
  Future<List<dynamic>> getValues(String boxName) async {
    final box = await Hive.openBox(boxName);
    final values = box.values.toList();

    return values;
  }

  @override
  Future<void> clearBox(String boxName) async {
    final box = await Hive.openBox(boxName);
    await box.clear();
  }

  @override
  Future<Stream<BoxEvent>> listenBox(String boxName) async {
    final box = await Hive.openBox(boxName);
    final listenable = box.watch();

    return listenable;
  }
}
