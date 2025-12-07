import 'package:elementary_helper/elementary_helper.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:flutter/foundation.dart';

class MainListenableModel {
  final EntityStateNotifier<CarsModel> cars = EntityStateNotifier<CarsModel>();

  /// Map: advertId -> isFavorite
  final ValueNotifier<Map<int, bool>> favoriteStates = ValueNotifier({});

  void updateFavoriteState(int advertId, bool isFavorite) {
    final newMap = Map<int, bool>.from(favoriteStates.value);
    newMap[advertId] = isFavorite;
    favoriteStates.value = newMap;
  }

  void initFavoriteStates(List<Advert> adverts) {
    favoriteStates.value = {for (final advert in adverts) advert.id: advert.isFavorite};
  }
}
