import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/core/utils/const.dart';
import 'package:mvvm_revirpoid/core/utils/style.dart';

class BookWidget extends StatelessWidget {
  final String image;
  final String title;
  final String vote;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(strings.imgsor+image),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        Text(
          title.toString(),
          style: Styles.textStyleGT,
        ),
        const SizedBox(
          height: 10,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Icon(
              Icons.star,
              color: Color(0xffFFDD4F),
            ),
            Text(
              rate.toString(),
              style: Styles.textStyle16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '($vote)',
              style: Styles.textStyle12,
            ),
          ],
        )
      ],
    );
  }

  const BookWidget({
    required this.image,
    required this.rate,
    required this.title,
    required this.vote,
  });
}
