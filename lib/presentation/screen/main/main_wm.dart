import 'package:elementary/elementary.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/presentation/screen/main/main_model.dart';
import 'package:elementary_test/presentation/screen/main/main_screen.dart';
import 'package:elementary_test/presentation/widget_model_interface/favorite_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'main_listenable_model.dart';

@injectable
class MainWidgetModel extends WidgetModel<MainScreen, MainModel> implements IFavoriteWidgetModel {
  final mainListenableModel = MainListenableModel();
  MainWidgetModel(super.model);

  ValueListenable<Map<int, bool>> get favoriteStates => mainListenableModel.favoriteStates;

  @override
  void initWidgetModel() {
    mainListenableModel.cars.loading();
    model
        .getCars()
        .then((cars) {
          mainListenableModel.cars.content(cars);
          mainListenableModel.initFavoriteStates(cars.adverts);
        })
        .catchError((error) {
          mainListenableModel.cars.error(error);
        });

    model.listenFavoriteCars().then((listenable) {
      listenable.listen((event) {
        final advertId = int.tryParse(event.key.toString());
        if (advertId != null) {
          final isFavorite = !event.deleted;
          // Обновляем только состояние избранного, не пересобираем весь список
          mainListenableModel.updateFavoriteState(advertId, isFavorite);
          // Обновляем данные в модели для консистентности
          mainListenableModel.cars.value.data?.adverts
              .where((advert) => advert.id == advertId)
              .forEach((advert) => advert.isFavorite = isFavorite);
        }
      });
    });

    super.initWidgetModel();
  }

  @override
  void saveOrRemoveCarToFavorite(Advert car) {
    if (car.isFavorite) {
      model.removeCarFromFavorite(car);
    } else {
      model.saveCarToFavorite(car);
    }
  }
}
