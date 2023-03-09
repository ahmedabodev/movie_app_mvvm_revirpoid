import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/core/utils/assets.dart';
import 'package:mvvm_revirpoid/core/utils/style.dart';
import 'package:mvvm_revirpoid/features/home/presntation/views/widgets/listviewbuilder.dart';

import 'widgets/customappbar.dart';
import 'widgets/listviewbestseller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          Listviewbulder(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Top Popular',style: Styles.textStyle30,),
          ),
          ListviewbBestSeller(),
        ],
      ),
    );
  }
}

