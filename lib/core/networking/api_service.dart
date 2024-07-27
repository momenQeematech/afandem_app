import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  final _baseUrl = '';
  late final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> getData({
    required String endPoint,
    String? token,
    Map<String, dynamic>? query,
  }) async {
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': 'en',
      'Authorization': token,
    };
    _dio.options.sendTimeout = (const Duration(seconds: 30));
    _dio.options.receiveTimeout = (const Duration(seconds: 30));
    _dio.options.connectTimeout = (const Duration(seconds: 30));
    _dio.options.receiveDataWhenStatusError = true;
    _dio.options.baseUrl = _baseUrl;

    prettyLogger();

    var response = await _dio.get(
      endPoint,
      queryParameters: query,
    );
    return response.data;
  }

  Future<dynamic> postData({
    required String endPoint,
    String? token,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    _dio.options.receiveDataWhenStatusError = true;
    _dio.options.baseUrl = _baseUrl;
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': 'en',
      'Authorization': token,
    };
    _dio.options.sendTimeout = (const Duration(seconds: 60));
    _dio.options.receiveTimeout = (const Duration(seconds: 60));
    _dio.options.connectTimeout = (const Duration(seconds: 60));
    prettyLogger();

    var response = await _dio.post(
      endPoint,
      queryParameters: query,
      data: data,
    );
    return response.data;
  }

  Future<dynamic> putData({
    required String endPoint,
    String? token,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    _dio.options.receiveDataWhenStatusError = true;
    _dio.options.baseUrl = _baseUrl;
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': 'en',
      'Authorization': token ?? '',
    };
    _dio.options.sendTimeout = (const Duration(seconds: 60));
    _dio.options.receiveTimeout = (const Duration(seconds: 60));
    _dio.options.connectTimeout = (const Duration(seconds: 60));

    var response = await _dio.put(
      endPoint,
      queryParameters: query,
      data: data,
    );
    return response.data;
  }

  prettyLogger() {
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ));
  }
}
