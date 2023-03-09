import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/config/routs/app_routs.dart';
import 'package:mvvm_revirpoid/core/utils/const.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/featch_pop.dart';

import 'bestsellerwidget.dart';

class ListviewbBestSeller extends StatelessWidget {
  const ListviewbBestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final home = ref.watch(featchPopRiverpod);

      return (home.home==null)?const  SizedBox(): Expanded(child:ListView.builder(
        itemCount: home.home!.results.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: (){
                Navigator.pushNamed(context, Routes.bookView,arguments:DetailsArgument(home: home.home!, index: index));

              },
              child:  BestSellerWidget(image: strings.imgsor+home.home!.results[index].poster_path.toString(),
                name: home.home!.results[index].original_title,
                vote: home.home!.results[index].vote_average.toString(),
                count: home.home!.results[index].vote_count.toString(),


              ));
        },));
    },);
  }
}
