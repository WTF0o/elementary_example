import 'package:elementary/elementary.dart';
import 'package:elementary_test/domain/interactor/favorite_interactor.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavoriteModel extends ElementaryModel {
  final IFavoriteInteractor _favoriteInteractor;
  FavoriteModel(this._favoriteInteractor);

  Future<List<Advert>?> getAllFavoriteCars() async {
    return _favoriteInteractor.getAllFavoriteCars();
  }

  Future<Stream<BoxEvent>> listenFavoriteCars() async {
    return _favoriteInteractor.listenFavoriteCars();
  }

  Future<void> removeCarFromFavorite(Advert car) async {
    return _favoriteInteractor.removeCarFromFavorite(car);
  }
}
