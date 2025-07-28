// import 'package:b_to_b_odg/src/core/constant/api_path.dart';
// import 'package:b_to_b_odg/src/utils/token_storage.dart';
// import 'package:dio/dio.dart';

// class DioClient {
//   static const String baseUrl = "${AppApiPath.baseUrl}";

//   Dio instance() {
//     final dio = Dio(
//       BaseOptions(
//         baseUrl: baseUrl,
//         headers: {'Content-Type': 'application/json'},
//         connectTimeout: Duration(seconds: 10),
//         receiveTimeout: Duration(seconds: 5),
//       ),
//     );

//     dio.interceptors.add(LogInterceptor(requestHeader: true, requestBody: true, responseBody: true, responseHeader: false, error: true));

//     dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           final accessToken = await TokenStorage.getAccessToken();
//           if (accessToken != null) {
//             options.headers['Authorization'] = 'Bearer $accessToken';
//           }
//           return handler.next(options);
//         },
//         onError: (error, handler) async {
//           if (error.response?.statusCode == 401) {
//             final refreshToken = await TokenStorage.getRefreshToken();
//             if (refreshToken != null) {
//               try {
//                 // 🔁 Attempt to refresh token
//                 final refreshResponse = await dio.post('https://your.api.com/auth/refresh', data: {'refresh_token': refreshToken});

//                 final newAccessToken = refreshResponse.data['access_token'];

//                 if (newAccessToken != null) {
//                   await TokenStorage.saveAccessToken(newAccessToken);
//                   final options = error.requestOptions;
//                   options.headers['Authorization'] = 'Bearer $newAccessToken';

//                   final cloneReq = await dio.fetch(options);
//                   return handler.resolve(cloneReq);
//                 }
//               } catch (e) {
//                 return handler.reject(error);
//               }
//             }
//           }

//           return handler.next(error);
//         },
//       ),
//     );

//     return dio;
//   }
// }
