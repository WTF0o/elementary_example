import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

abstract class IFavoriteRepository {
  Future<List<Advert>?> getAllFavoriteCars();
  Future<void> saveCarToFavorite(Advert car);
  Future<void> removeCarFromFavorite(Advert car);
  Future<void> clearFavoriteCars();
  Future<Stream<BoxEvent>> listenFavoriteCars();
}
