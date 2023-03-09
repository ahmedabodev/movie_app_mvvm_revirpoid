import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/config/routs/app_routs.dart';
import 'package:mvvm_revirpoid/core/utils/assets.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 40),
      child:  Row(
        children: [
          Image.asset(Assetstring.logo,height: 30,),
          const Spacer(),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.searchView,);


          }, icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
