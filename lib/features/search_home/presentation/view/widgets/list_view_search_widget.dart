import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/config/routs/app_routs.dart';
import 'package:mvvm_revirpoid/features/home/presntation/views/widgets/bestsellerwidget.dart';
import 'package:mvvm_revirpoid/features/search_home/presentation/view_model/featch_search.dart';

class ListviewSearch extends StatelessWidget {
  const ListviewSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final item=ref.watch(fetchSearchRiverpod);
      return (item.home==null)?const Center(child: Text('No Data Found')): Expanded(
        child:(item.home!.results.isEmpty)?const Center(child: Text('No Data Found'),): ListView.builder(
          itemCount: item.home!.results.length,
          itemBuilder: (BuildContext context, int index) {
            return            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Routes.bookView,arguments:DetailsArgument(home: item.home!, index: index));

              },
              child: BestSellerWidget(
                image: item.home!.results[index].poster_path.toString(),
                name:item.home!.results[index].original_title ,
                vote: item.home!.results[index].vote_average.toString(),
                count: item.home!.results[index].vote_count.toString(),
              ),
            );
          },),
      );
    },);
  }
}
