
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:texnomart/date/repository/sliders_repository_impl.dart';
import 'package:texnomart/date/source/remote/service/api_service.dart';
import 'package:texnomart/domain/repository.dart';

final di = GetIt.instance;

final dio = Dio(BaseOptions(
  baseUrl: "https://gateway.texnomart.uz/api/"
));

void setup (){
  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printRequestData: true,
        printResponseData: true,
       // printResponseHea
        // ders: true,
         printResponseMessage: true,
      ),
    ),
  );
  di.registerSingleton<ApiService>(ApiService(dio));
  di.registerSingleton<TexnoRepository>(RepositoryImpl());
}