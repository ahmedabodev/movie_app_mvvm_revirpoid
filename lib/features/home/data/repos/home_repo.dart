import 'package:dartz/dartz.dart';
import 'package:mvvm_revirpoid/core/errors/errors.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

abstract  class HomeRepo{
   Future<Either<Failure,homemodel>>featchBestSellerBooks();
   Future<Either<Failure,homemodel>>featchPop();
}

