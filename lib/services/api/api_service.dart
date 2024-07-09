import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_app/utils/logger.dart';

class DioService {
  late Dio _dio;
  static final DioService _singleton = DioService._internal();

  factory DioService() {
    return _singleton;
  }

  DioService._internal() {
    // _initializeDio();
  }

  void _setHeader({String? token}) {
    //set up Auth token... etc.
  }

  Future<void> initializeDio() async {
    logD("initialize Dio...");

    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://itunes.apple.com/',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        validateStatus: (int? status) {
          return status != null && status >= 200 && status < 300;
        },
        headers: {
          //header if needed
        },
        contentType: "application/json",
      ),
    );

    _dio.interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) async {
          try {
            if (response.data == null) {
              return handler.reject(
                DioException(
                  requestOptions: response.requestOptions,
                  type: DioExceptionType.unknown,
                  error: response.data,
                ),
                true,
              );
            } else {
              return handler.next(response);
            }
          } catch (e) {
            logE("Error caught on Dio onResponse :$e");

            return handler.next(response);
          }
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode != null) {
            //error handling...
          } else if (e.type == DioExceptionType.unknown) {
            //error handling...
          } else {
            logE("Error caught on DioException: ${e.type}");
            //error handling...
          }
          return handler.next(e);
        },
      ),
      if (kDebugMode)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          error: true,
          compact: true,
          maxWidth: 500,
        ),
    ]);
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    // String? token,
    Options? options,
  }) async {
    // _setHeader(token: token);

    return _dio.get(url, queryParameters: params, options: options);
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? data,
    String? token,
    Options? options,
  }) async {
    _setHeader(token: token);
    if (kDebugMode) {
      print('Authorization Bearer ${_dio.options.headers}');
    }
    return _dio.post(url, data: data, options: options);
  }
}
