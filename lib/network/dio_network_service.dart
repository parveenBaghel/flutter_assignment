
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../models/response/response.dart' as response;
import 'network_handler_mixin.dart';
import 'network_service.dart';
import 'network_values.dart';


class DioNetworkService extends NetworkService with ExceptionHandlerMixin{
  late Dio dio;

  DioNetworkService() {
    dio = Dio();
      dio.options = dioBaseOptions;
      if (kDebugMode) {
        dio.interceptors
            .add(LogInterceptor(requestBody: true, responseBody: true));
      }
  }

  BaseOptions get dioBaseOptions => BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20));

  @override
  String get baseUrl => 'https://api.quotable.io/';

  @override
  String get apiKey =>  '';

  @override
  Map<String, Object> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
      };

  @override
  Map<String, dynamic>? updateHeaders(Map<String, dynamic> data) {
    final header = {...data, ...headers};
      dio.options.headers = headers;
    return header;
  }

  @override
  Future<response.Response> get(String endPoint, {Map<String, dynamic>? queryParams}) {
    queryParams ??= {};
    queryParams[Params.apiKey]=apiKey;
    final res = handleException(
      () => dio.get(
        endPoint,
        queryParameters: queryParams,
      ),
      endPoint: endPoint,
    );
    return res;
  }

}
