
import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/features/home/presntation/view_model/homemodel.dart';
import 'package:mvvm_revirpoid/features/home/presntation/views/booksview.dart';
import 'package:mvvm_revirpoid/features/search_home/presentation/view/search_view.dart';
import 'package:mvvm_revirpoid/features/splash/splash_view.dart';

import '../../features/home/presntation/views/homeview.dart';

// name  routes to navigator to any screen
class Routes {
  static const splashView = '/';
  static const homeView = '/home_view';
  static const bookView = '/book_view';
  static const detailsView = '/details_view';
  static const searchView = '/search_view';
  static const webView = '/web_view';
}
class DetailsArgument{
  homemodel home;
  int index;

  DetailsArgument({
    required this.home,
    required this.index,
  });
}
class AppRoutes {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // name routes screen
      case Routes.splashView:
        //navigator to this name
        return MaterialPageRoute(builder: (BuildContext context)=> const SplashView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (BuildContext context)=> const HomeView());
        case Routes.searchView:
        //navigator to this name
        return MaterialPageRoute(builder: (BuildContext context)=> const SearchView());
      case Routes.bookView:
        final detailsarg=settings.arguments as DetailsArgument;
        return MaterialPageRoute(builder: (BuildContext context)=>  BooksView(home: detailsarg.home, index:detailsarg.index ,));
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: ((context) => const Scaffold(
        body: Center(
          child: Text('Route not Found'),
        ),
      )),
    );
  }
}