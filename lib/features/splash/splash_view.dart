import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/config/routs/app_routs.dart';
import 'package:mvvm_revirpoid/features/splash/widgets/splashwidget.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    navigateHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Splashviewbody(),
    );
  }
  navigateHome(){
    Future.delayed(const Duration(seconds: 3)).then((value) {
      // navigator with routes
      Navigator.pushReplacementNamed(context, Routes.homeView);
    });
  }
}
