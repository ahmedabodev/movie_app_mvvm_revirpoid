import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(image.toString()),
              fit: BoxFit.cover,
            )),
          ),
        ),
      ),
    );
  }

  const CustomListView({
    super.key,
    required this.image,
  });
}
