import 'package:flutter/cupertino.dart';
import 'package:mvvm_revirpoid/core/utils/assets.dart';
import 'package:mvvm_revirpoid/features/splash/widgets/animation_text.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Image.asset(Assetstring.logo,width: 100,fit: BoxFit.cover,)),
        const SizedBox(height: 10,),
        const AnimationText(),
      ],
    );
  }
}
