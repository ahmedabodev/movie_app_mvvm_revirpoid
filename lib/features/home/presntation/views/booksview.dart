import 'package:flutter/material.dart';

import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

import '../../../../core/utils/style.dart';
import 'widgets/book_button.dart';
import 'widgets/book_widget.dart';
import 'widgets/custom_appbar_bookview.dart';
import 'widgets/list_view_book.dart';

class BooksView extends StatelessWidget {
  final int index;
  final homemodel home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const CustomAppbarBookview(),
            BookWidget(
              image: home.results[index].backdrop_path,
              title:home.results[index].original_title ,
              rate: home.results[index].vote_average.toString(),
              vote: home.results[index].vote_count.toString(),
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'You can also like',
                style: Styles.textStyle12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             ListviewBook(home: home),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

  const BooksView({
    required this.home,
    required this.index,
  });
}




