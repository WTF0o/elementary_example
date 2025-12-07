import 'package:elementary/elementary.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/presentation/screen/main/main_model.dart';
import 'package:elementary_test/presentation/screen/main/main_screen.dart';
import 'package:elementary_test/presentation/widget_model_interface/favorite_interface.dart';
import 'package:injectable/injectable.dart';

import 'main_listenable_model.dart';

@injectable
class MainWidgetModel extends WidgetModel<MainScreen, MainModel> implements IFavoriteWidgetModel {
  final mainListenableModel = MainListenableModel();
  MainWidgetModel(super.model);
  @override
  void initWidgetModel() {
    mainListenableModel.cars.loading();
    model
        .getCars()
        .then((cars) {
          mainListenableModel.cars.content(cars);
        })
        .catchError((error) {
          mainListenableModel.cars.error(error);
        });

    model.listenFavoriteCars().then((listenable) {
      listenable.listen((event) {
        mainListenableModel.cars.value.data?.adverts
                .where((advert) => advert.id.toString() == event.key)
                .first
                .isFavorite =
            !event.deleted;
        final currentState = mainListenableModel.cars.value.data;
        if (currentState != null) {
          mainListenableModel.cars.content(currentState);
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
