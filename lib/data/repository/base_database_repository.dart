import 'package:elementary_test/data/service/database_service.dart';

abstract class BaseDatabaseRepository {
  final IDatabaseService databaseService;
  BaseDatabaseRepository(this.databaseService);
}
