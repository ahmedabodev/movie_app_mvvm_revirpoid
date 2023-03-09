import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

abstract class ApiServices {
  Future get({required String endPoint, Map<String, dynamic>? queryParameters,});
}