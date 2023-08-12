import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page.dart';

class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({super.key});

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
  // ignore: non_constant_identifier_names
  int selected_index = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Favourite'),
    Text('Cart'),
    Text('Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected_index,
          onTap: (value) {
            setState(() {
              selected_index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded), label: 'Favourite'),
            BottomNavigationBarItem(icon: Icon(Icons.trolley), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded), label: 'Profile'),
          ]),
      body: _widgetOptions[selected_index],
    );
  }
}
