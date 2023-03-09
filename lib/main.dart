import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/config/routs/app_routs.dart';
import 'package:mvvm_revirpoid/core/utils/colors.dart';
import 'package:mvvm_revirpoid/features/dio_helper.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();
await DioHelper.init();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: ColorsApp.kprimecolor,
      ),

      // make my routes run
      onGenerateRoute:AppRoutes.generateRoute ,
    );
  }
}


