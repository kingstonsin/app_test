import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_app/common/injection/get_it.dart';
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
            //TODO handle response model
            // final ApiResponse _apiResponse =
            //     ApiResponse.fromJson(response.data);
            if (response.data == null) {
              return handler.reject(
                DioException(
                  requestOptions: response.requestOptions,
                  type: DioExceptionType.unknown,
                  error: response.data,
                  // error: _apiResponse,
                ),
                true,
              );
            } else {
              return handler.next(response);
            }
          } catch (e) {
            logE("Error caught on Dio onResponse :$e");
            //TODO extract
            // showDialog(
            //   context: globalContext,
            //   builder: (BuildContext context) {
            //     return Column(
            //       children: [
            //         Text(
            //           l10n().fail,
            //         ),
            //         const SizedBox(
            //           height: 10,
            //         ),
            //         Text(
            //           l10n().connection_timeout,
            //         )
            //       ],
            //     );
            //   },
            // );
            return handler.next(response);
          }
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode != null) {
            showDialog(
              context: globalContext,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Text(
                      l10n().fail,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      l10n().connection_timeout,
                    )
                  ],
                );
              },
            );
            // await statusCodeHandler(statusCode: e.response!.statusCode);
          } else if (e.type == DioExceptionType.unknown) {
            showDialog(
              context: globalContext,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Text(
                      l10n().fail,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      l10n().connection_timeout,
                    )
                  ],
                );
              },
            );
          } else {
            logE("Error caught on DioException: ${e.type}");
            showDialog(
              context: globalContext,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Text(
                      l10n().fail,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      l10n().connection_timeout,
                    )
                  ],
                );
              },
            );
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
