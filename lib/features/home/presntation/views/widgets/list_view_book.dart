import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/core/utils/const.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

class ListviewBook extends StatelessWidget {
  final homemodel home;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: home.results.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: 200,
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(strings.imgsor+home.results[index].poster_path),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  const ListviewBook({
    required this.home,
  });
}
