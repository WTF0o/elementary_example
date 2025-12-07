import 'package:elementary_test/data/service/http_service.dart';

abstract class BaseHttpRepository {
  final IHttpService httpService;

  BaseHttpRepository(this.httpService);
}
