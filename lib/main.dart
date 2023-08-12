import 'package:flutter/material.dart';
//import 'package:grocery_app/pages/home_page.dart';
import 'package:grocery_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.mainLayoutPage,
      onGenerateRoute: RouteManager.generateRoute,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              elevation: 0,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              backgroundColor: Colors.transparent,
              showUnselectedLabels: true,
              enableFeedback: false,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.greenAccent)),
    );
  }
}
