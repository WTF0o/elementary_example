import 'package:elementary_test/data/mapper/av_mapper.dart';
import 'package:elementary_test/data/model/api_cars_response.dart';
import 'package:elementary_test/data/repository/base_http_repository.dart';
import 'package:elementary_test/data/utils/const_data.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/av_repository.dart';

@Injectable(as: IAvRepository)
class AvRepositoryImpl extends BaseHttpRepository implements IAvRepository {
  final IAvMapper _avMapper;
  AvRepositoryImpl(super.httpService, this._avMapper);

  @override
  Future<CarsModel> getCars() {
    return httpService
        .post(
          ConstData.getCars,
          data: {
            "page": 1,
            "properties": [
              {"name": "price_currency", "value": 2},
            ],
            "sorting": 1,
          },
        )
        .then(
          (response) =>
              _avMapper.apiCarsResponseToCarsModel(ApiCarsResponse.fromJson(response.data)),
        );
  }
}
