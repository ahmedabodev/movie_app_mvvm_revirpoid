import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/core/errors/errors.dart';
import 'package:mvvm_revirpoid/features/home/data/repos/home_repo_impl.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';
import 'package:mvvm_revirpoid/features/search_home/data/repos/search_repo_impl.dart';

final fetchSearchRiverpod = ChangeNotifierProvider<FetchSearchRiverpod>(
        (ref) => FetchSearchRiverpod(SearchRepoImpl()));

class FetchSearchRiverpod extends ChangeNotifier {
  FetchSearchRiverpod(this.searchRepoImpl) {
    getData();
  }
String search='a';
  final SearchRepoImpl searchRepoImpl;

  homemodel? home;
  Failure? failure;
changesearch(value){
  search=value;
  getData();

  notifyListeners();

}
  getData() async {
    Either<Failure, homemodel> result =
    await searchRepoImpl.featchSearchMoive(search: search);
    result.fold((fail) {
      failure = fail;
    }, (respons) {
      home = respons;
      print(home!.results.toString());
    });
    notifyListeners();
  }
}