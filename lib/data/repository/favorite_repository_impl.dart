import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:elementary_test/data/repository/base_database_repository.dart';
import 'package:elementary_test/data/utils/const_data.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/domain/repository/favorite_repository.dart';

@Injectable(as: IFavoriteRepository)
class FavoriteRepositoryImpl extends BaseDatabaseRepository implements IFavoriteRepository {
  FavoriteRepositoryImpl(super.databaseService);

  @override
  Future<List<Advert>?> getAllFavoriteCars() async {
    return databaseService
        .getValues(ConstData.favoriteBoxName)
        .then((values) => List.castFrom<dynamic, Advert>(values));
  }

  @override
  Future<void> removeCarFromFavorite(Advert car) {
    return databaseService.removeValue(ConstData.favoriteBoxName, car.id.toString());
  }

  @override
  Future<void> saveCarToFavorite(Advert car) {
    return databaseService.setValue(ConstData.favoriteBoxName, car.id.toString(), car);
  }

  @override
  Future<void> clearFavoriteCars() {
    return databaseService.clearBox(ConstData.favoriteBoxName);
  }

  @override
  Future<Stream<BoxEvent>> listenFavoriteCars() {
    return databaseService.listenBox(ConstData.favoriteBoxName);
  }
}
