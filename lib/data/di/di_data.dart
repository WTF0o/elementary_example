import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:elementary_test/data/utils/const_data.dart';

@module
abstract class DiData {
  @singleton
  Dio dio(Talker talker) {
    final dio = Dio(BaseOptions(baseUrl: ConstData.baseUrl));
    dio.interceptors.add(
      TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printResponseTime: true,
          printResponseMessage: true,
          printResponseHeaders: true,
          printRequestHeaders: true,
          printRequestData: true,
          printErrorData: true,
          printRequestExtra: true,
        ),
      ),
    );
    return dio;
  }
}
