import 'dart:io';

import 'package:dio/dio.dart';
import '../models/response/response.dart' as response;
import 'network_service.dart';


mixin ExceptionHandlerMixin on NetworkService {
  Future<response.Response> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endPoint = ''}) async {
    try {
      final res = await handler();
      return response.Response(
        statusCode: res.statusCode ?? 200,
        data: res.data,
        statusMessage: res.statusMessage,
      );
    } catch (ex) {
      String message = '';
      String identifier = '';
      int statusCode = 0;
      switch (ex.runtimeType) {
        case SocketException:
          ex as SocketException;
          message = 'unable to connect to the server.';
          statusCode = 0;
          identifier = 'Socket Exception ${ex.message}\n at  $endPoint';
          break;

        case DioException:
          ex as DioException;
          message = ex.response?.data?['message'] ?? 'Internal Error occurred';
          statusCode = 0;
          identifier = 'Dio Exception ${ex.message}\n at  $endPoint';
          break;

        default:
          message = 'unknown error occurred';
          statusCode = 0;
          identifier = 'unknown error ${ex.toString()}\n at  $endPoint';
          break;
      }
      return response.Response(
        statusCode: statusCode,
        data: null,
        statusMessage: message,
      );
    }
  }
}
