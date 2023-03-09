import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/core/utils/colors.dart';
import 'package:mvvm_revirpoid/core/utils/style.dart';

class BookBar extends StatelessWidget {
  const BookBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color:ColorsApp.bookcardcolor,
        elevation: 8,
        height: 50,
        minWidth: MediaQuery.of(context).size.width * 0.4,
        onPressed: () {  },
        child: Text(
          'Watch Now',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
