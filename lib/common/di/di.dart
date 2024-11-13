
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:texnomart/data/repository/sliders_repository_impl.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/domain/repository.dart';

final di = GetIt.instance;

final dio = Dio(BaseOptions(
  baseUrl: "https://gateway.texnomart.uz:443/api/"
));

void setup (){
  dio.interceptors.add(
    DioInterceptor(),
  );
  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        // printRequestHeaders: true,
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

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // accept language uz

    options.headers.addAll({
      "accept-language": "uz",

    });
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}