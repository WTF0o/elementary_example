import 'package:elementary/elementary.dart';
import 'package:elementary_test/domain/interactor/av_interactor.dart';
import 'package:elementary_test/domain/interactor/favorite_interactor.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:collection/collection.dart';

@injectable
class MainModel extends ElementaryModel {
  final IAvInteractor _avInteractor;
  final IFavoriteInteractor _favoriteInteractor;
  MainModel(this._avInteractor, this._favoriteInteractor);

  Future<CarsModel> getCars() async {
    final cars = await _avInteractor.getCars();
    final favoriteCars = await _favoriteInteractor.getAllFavoriteCars();
    favoriteCars?.forEach((favoriteCar) {
      cars.adverts.firstWhereOrNull((advert) => advert.id == favoriteCar.id)?.isFavorite = true;
    });
    return cars;
  }

  Future<void> getFavoriteCars() => _favoriteInteractor.getAllFavoriteCars();

  Future<void> saveCarToFavorite(Advert car) async {
    return _favoriteInteractor.saveCarToFavorite(car);
  }

  Future<void> removeCarFromFavorite(Advert car) async {
    return _favoriteInteractor.removeCarFromFavorite(car);
  }

  Future<Stream<BoxEvent>> listenFavoriteCars() async {
    return _favoriteInteractor.listenFavoriteCars();
  }
}
