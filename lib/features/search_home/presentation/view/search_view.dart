import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/config/routs/app_routs.dart';
import 'package:mvvm_revirpoid/features/home/presntation/views/widgets/bestsellerwidget.dart';
import 'package:mvvm_revirpoid/features/home/presntation/views/widgets/book_widget.dart';
import 'package:mvvm_revirpoid/features/home/presntation/views/widgets/custom_appbar_bookview.dart';
import 'package:mvvm_revirpoid/features/search_home/presentation/view_model/featch_search.dart';

import 'widgets/list_view_search_widget.dart';
import 'widgets/textform_search_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CustomAppbarBookview(),
            TextFormSearch(),
            ListviewSearch(),

          ],
        ),
      ),
    );
  }
}
