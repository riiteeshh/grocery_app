import 'package:flutter/material.dart';
import 'package:grocery_app/components/category_card.dart';

class CategorPage extends StatefulWidget {
  const CategorPage({super.key});

  @override
  State<CategorPage> createState() => _CategorPageState();
}

class _CategorPageState extends State<CategorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Category',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.builder(
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 0.8),
          itemBuilder: (context, index) {
            return CategoryCard(
                name: 'Milk & egg', imageData: 'lib/images/vegetable.png');
          }),
    );
  }
}
