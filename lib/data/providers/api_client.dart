import 'package:cypressoft_task/data/models/album.dart';
import 'package:cypressoft_task/data/models/photo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DataAPI extends BaseService {
  Future<List<Album>> fetchAlbums() async {
    final response = await request(
      endpoint: 'albums',
      requestType: RequestType.GET,
    ) as Response;

    final albums = List<dynamic>.from(response.data as Iterable)
        .map((e) => Album.fromJson(e as Map<String, dynamic>))
        .toList();

    return albums;
  }

  Future<List<Photo>> fetchPhotos({required int albumId}) async {
    final response = await request(
      endpoint: 'photos',
      requestType: RequestType.GET,
      queryParameters: {'albumId': albumId},
    ) as Response;

    final albums = List<dynamic>.from(response.data as Iterable)
        .map((e) => Photo.fromJson(e as Map<String, dynamic>))
        .toList();

    return albums;
  }
}

enum RequestType { GET, POST, PUT, DELETE }

class BaseService {
  final Dio _dio = Dio();

  Future<dynamic> request({
    required RequestType requestType,
    dynamic data,
    String? endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    _dio.interceptors.add(HeaderInterceptor());
    Response? _response;
    try {
      switch (requestType) {
        case RequestType.GET:
          _response =
              await _dio.get<void>(endpoint!, queryParameters: queryParameters);
          break;
        case RequestType.POST:
          _response = await _dio.post<void>(
            endpoint!,
            data: data,
          );
          break;
        case RequestType.PUT:
          _response = await _dio.put<void>(endpoint!, data: data);
          break;
        case RequestType.DELETE:
          _response = await _dio.delete<void>(endpoint!);
          break;
      }
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return _response;
  }
}

class HeaderInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.baseUrl = 'https://jsonplaceholder.typicode.com/';

    super.onRequest(options, handler);
  }
}
