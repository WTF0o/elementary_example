import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/domain/repository/av_repository.dart';
import 'package:injectable/injectable.dart';

abstract class IAvInteractor {
  Future<CarsModel> getCars();
}

@Injectable(as: IAvInteractor)
class AvInteractor implements IAvInteractor {
  final IAvRepository _avRepository;

  AvInteractor(this._avRepository);

  @override
  Future<CarsModel> getCars() {
    return _avRepository.getCars();
  }
}
