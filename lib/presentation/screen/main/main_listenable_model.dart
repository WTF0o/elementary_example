import 'package:elementary_helper/elementary_helper.dart';
import 'package:elementary_test/domain/model/cars_model.dart';

class MainListenableModel {
  final EntityStateNotifier<CarsModel> cars = EntityStateNotifier<CarsModel>();
}
