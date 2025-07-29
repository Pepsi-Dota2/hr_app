import 'package:dio/dio.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/helper/body_builder_where.dart';
import 'package:hr_app/src/core/service/token_storage.dart';

class DioClient {
  static const String baseUrl = "${AppApiPath.baseUrl}";
  Dio instance() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {'Content-Type': 'application/json'},
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 5),
      ),
    );

    dio.interceptors.add(LogInterceptor(requestHeader: true, requestBody: true, responseBody: true, responseHeader: false, error: true));

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await TokenStorage.getAccessToken();
          if (accessToken != null) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final refreshToken = await TokenStorage.getRefreshToken();
            if (refreshToken != null) {
              try {
                final body = ApiBodyBuilderWhere.buildWhere({"refresh_token": refreshToken}, storeCode: "user_auth");
                final refreshResponse = await dio.post(AppApiPath.refreshToken, data: body.toJson());

                final newAccessToken = refreshResponse.data['access_token'];

                if (newAccessToken != null) {
                  await TokenStorage.saveAccessToken(newAccessToken);
                  final options = error.requestOptions;
                  options.headers['Authorization'] = 'Bearer $newAccessToken';

                  final cloneReq = await dio.fetch(options);
                  return handler.resolve(cloneReq);
                }
              } catch (e) {
                return handler.reject(error);
              }
            }
          }

          return handler.next(error);
        },
      ),
    );

    return dio;
  }
}
