import 'package:dartz/dartz.dart';
import 'package:mvvm_revirpoid/core/errors/errors.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

abstract  class SearchRepo{
  Future<Either<Failure,homemodel>>featchSearchMoive();
}

