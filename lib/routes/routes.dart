//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:grocery_app/pages/category_page.dart';
import 'package:grocery_app/pages/main_layout_page.dart';

//import '../pages/home_page.dart';

class RouteManager {
  static const String mainLayoutPage = '/';
  static const String categoryPage = '/categoryPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainLayoutPage:
        return MaterialPageRoute(builder: (context) => const MainLayoutPage());
      case categoryPage:
        return MaterialPageRoute(builder: (context) => const CategorPage());
      default:
        throw const FormatException('Route not Found!');
    }
  }
}
