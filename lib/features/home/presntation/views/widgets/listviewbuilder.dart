import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/config/routs/app_routs.dart';
import 'package:mvvm_revirpoid/core/utils/const.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/featch_riverpod_home.dart';
import 'package:mvvm_revirpoid/features/home/presntation/views/widgets/customlistview.dart';

class Listviewbulder extends StatelessWidget {
  const Listviewbulder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.25,

      child: Consumer(builder: (BuildContext context,  ref, Widget? child) {

        final home = ref.watch(featchHomeRiverpod);
        return (home.home==null)?const Center(child: CircularProgressIndicator()):ListView.builder(
          itemCount: home.home!.results.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, Routes.bookView,arguments: DetailsArgument(home: home.home!, index: index),);

                },
                child:  CustomListView(image: strings.imgsor+home.home!.results[index].poster_path.toString()));
          },);
      },

      ),
    );
  }
}
