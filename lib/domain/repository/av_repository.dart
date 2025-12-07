import 'package:elementary_test/data/repository/base_http_repository.dart';
import 'package:elementary_test/domain/model/cars_model.dart';

abstract class IAvRepository extends BaseHttpRepository {
  IAvRepository(super.httpService);

  Future<CarsModel> getCars();
}
