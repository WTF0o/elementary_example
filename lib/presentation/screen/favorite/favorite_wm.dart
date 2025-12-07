import 'package:elementary/elementary.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/presentation/screen/favorite/favorite_model.dart';
import 'package:elementary_test/presentation/screen/favorite/favorite_screen.dart';
import 'package:elementary_test/presentation/widget_model_interface/favorite_interface.dart';
import 'package:injectable/injectable.dart';

import 'favorite_listenable_model.dart';

@injectable
class FavoriteWidgetModel extends WidgetModel<FavoriteScreen, FavoriteModel>
    implements IFavoriteWidgetModel {
  final favoriteListenableModel = FavoriteListenableModel();
  FavoriteWidgetModel(super.model);
  @override
  void initWidgetModel() {
    super.initWidgetModel();
    favoriteListenableModel.favoriteCars.loading();
    model.getAllFavoriteCars().then(
      (favoriteCars) => favoriteListenableModel.favoriteCars.content(favoriteCars),
    );
    model.listenFavoriteCars().then((listenable) {
      listenable.listen((event) {
        final list = favoriteListenableModel.favoriteCars.value.data;

        final databaseCar = event.value as Advert?;
        event.deleted && databaseCar != null ? list?.remove(databaseCar) : list?.add(databaseCar!);

        final currentState = favoriteListenableModel.favoriteCars.value.data;
        if (currentState != null) {
          favoriteListenableModel.favoriteCars.content(currentState);
        }
      });
    });
  }

  @override
  void saveOrRemoveCarToFavorite(Advert car) {
    model.removeCarFromFavorite(car);
  }
}
