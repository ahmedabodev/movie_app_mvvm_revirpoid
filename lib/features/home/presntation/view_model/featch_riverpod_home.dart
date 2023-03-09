import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/core/errors/errors.dart';
import 'package:mvvm_revirpoid/features/home/data/repos/home_repo_impl.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

final featchHomeRiverpod = ChangeNotifierProvider<FetchHomeRiverpod>(
    (ref) => FetchHomeRiverpod(HomeRepoImpl()));

class FetchHomeRiverpod extends ChangeNotifier {
  FetchHomeRiverpod(this.homeRepoImpl) {
    getData();
  }

  final HomeRepoImpl homeRepoImpl;

  homemodel? home;
  Failure? failure;

  getData() async {
    Either<Failure, homemodel> result =
        await homeRepoImpl.featchBestSellerBooks();
    result.fold((fail) {
      failure = fail;
    }, (respons) {
      home = respons;
    });
    notifyListeners();
  }
}
