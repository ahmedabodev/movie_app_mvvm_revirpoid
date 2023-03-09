import 'package:dartz/dartz.dart';
import 'package:mvvm_revirpoid/core/api/api_services.dart';
import 'package:mvvm_revirpoid/core/api/api_services_implementation.dart';
import 'package:mvvm_revirpoid/core/api/endpoint.dart';
import 'package:mvvm_revirpoid/core/errors/errors.dart';
import 'package:mvvm_revirpoid/features/dio_helper.dart';
import 'package:mvvm_revirpoid/features/home/data/repos/home_repo.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

class HomeRepoImpl implements HomeRepo {
  ApiServices? apiServices;

  @override
  Future<Either<Failure, homemodel>> featchBestSellerBooks() async {
    try {
      var data = await DioHelper.getData(
          url: EndPoints.volumes,
          query: {'api_key': EndPoints.apikey, 'language': EndPoints.lang});

      var home = homemodel.fromJson(data.data);
      return right(home);
    } catch (e) {
      print(left(e.toString()));

      return left(ServerFailure(e.toString()));
    }

    throw UnimplementedError();
  }



  @override
  Future<Either<Failure, homemodel>> featchPop() async{
    try {
      var data = await DioHelper.getData(
          url: EndPoints.popular,
          query: {'api_key': EndPoints.apikey, 'language': EndPoints.lang});

      var home = homemodel.fromJson(data.data);
      return right(home);
    } catch (e) {
      print(left(e.toString()));

      return left(ServerFailure(e.toString()));
    }
  }
}
