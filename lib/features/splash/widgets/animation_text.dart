
import 'package:flutter/material.dart';

class AnimationText extends StatefulWidget {
  const AnimationText({Key? key}) : super(key: key);

  @override
  State<AnimationText> createState() => _AnimationTextState();
}

class _AnimationTextState extends State<AnimationText> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideranimation;
  @override
  void initState() {
    // TODO: implement initState
    sliderAnimation();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: slideranimation, builder: (BuildContext context, Widget? child) {
      return SlideTransition(position:slideranimation,child:const Text('Read Free Books',textAlign: TextAlign.center,) , );
    },);
  }

 void sliderAnimation(){
    animationController=AnimationController(vsync: this,
        duration: const Duration(seconds: 1)
    );
    slideranimation=Tween<Offset>(begin:const Offset(0,2) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
}
