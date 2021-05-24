import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/core/http/exception.dart';

class ApiProvider {
  static final _options = BaseOptions(
    baseUrl: '',
  );

  final _dio = new Dio(_options);

  String token = '';

  void setToken(String token) {
    this.token = token;
  }

  ApiProvider() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers = {
          'Authorization': 'Bearer $token',
        };
        return handler.next(options);
      },
    ));
  }

  Future<Either<CustomException, dynamic>> post({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    try {
      final res = await _dio.post(url, data: data);
      return right(res.data);
    } on DioError catch (e) {
      switch (e.response?.statusCode) {
        case 400:
          return left(CustomException.notFound());
        default:
          return left(CustomException.serverError());
      }
    }
  }

  Future<Either<CustomException, dynamic>> get({required String url}) async {
    try {
      final res = await _dio.get(url);
      return right(res.data);
    } on DioError catch (e) {
      switch (e.response?.statusCode) {
        case 400:
          return left(CustomException.notFound());
        default:
          return left(CustomException.serverError());
      }
    }
  }

  Future<Either<CustomException, dynamic>> put({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    try {
      final res = await _dio.put(url, data: data);
      return right(res.data);
    } on DioError catch (e) {
      switch (e.response?.statusCode) {
        case 400:
          return left(CustomException.notFound());
        default:
          return left(CustomException.serverError());
      }
    }
  }
}
