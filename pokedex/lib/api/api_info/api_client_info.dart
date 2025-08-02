import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;

  ApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'https://pokeapi.co/api/v2/',
            headers: {
              'content-type': 'application/json; charset=UTF-8',
              'Accept': '*/*',
              'Cache-Control': 'no-cache',
              'Connection': 'keep-alive',
            },
          ),
        ) {
    // _dio.interceptors.add(AuthInterceptor());
    // _dio.interceptors.add(LoggingInterceptor());
  }

  Dio get dio => _dio;
}