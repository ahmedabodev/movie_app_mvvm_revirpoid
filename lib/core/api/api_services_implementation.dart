
import 'package:dio/dio.dart';
import 'package:mvvm_revirpoid/core/api/api_services.dart';
import 'package:mvvm_revirpoid/core/api/endpoint.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

class ApiServicesImplementation implements ApiServices {
  Dio? _dio;

  ApiServicesImplementation() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout:const Duration(seconds: 10), //10 second
      receiveTimeout:const Duration(seconds: 10),
    );
    _dio = Dio(baseOptions);
  }

  @override
  Future<homemodel> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response =
    await _dio!.get(endPoint,queryParameters: queryParameters);
    return response.data;
  }
}