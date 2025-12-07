import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/domain/repository/favorite_repository.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class IFavoriteInteractor {
  Future<List<Advert>?> getAllFavoriteCars();
  Future<void> saveCarToFavorite(Advert car);
  Future<void> removeCarFromFavorite(Advert car);
  Future<Stream<BoxEvent>> listenFavoriteCars();
  Future<void> clearFavoriteCars();
}

@Injectable(as: IFavoriteInteractor)
class FavoriteInteractor implements IFavoriteInteractor {
  final IFavoriteRepository _favoriteRepository;
  FavoriteInteractor(this._favoriteRepository);

  @override
  Future<List<Advert>?> getAllFavoriteCars() async {
    return _favoriteRepository.getAllFavoriteCars();
  }

  @override
  Future<void> removeCarFromFavorite(Advert car) {
    return _favoriteRepository.removeCarFromFavorite(car);
  }

  @override
  Future<void> saveCarToFavorite(Advert car) {
    return _favoriteRepository.saveCarToFavorite(car);
  }

  @override
  Future<void> clearFavoriteCars() {
    return _favoriteRepository.clearFavoriteCars();
  }

  @override
  Future<Stream<BoxEvent>> listenFavoriteCars() {
    return _favoriteRepository.listenFavoriteCars();
  }
}
