

import '../models/response/response.dart';

abstract class NetworkService {
  String get baseUrl;

  String get apiKey;

  Map<String, Object> get headers;

  void updateHeaders(Map<String, dynamic> data);

  Future<Response> get(
    String endPoint, {
    Map<String, dynamic>? queryParams,
  });

}
