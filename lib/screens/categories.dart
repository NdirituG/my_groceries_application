import 'package:flutter/material.dart';
import 'package:my_groceries_application/widgets/categories_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CategoriesWidget(),
      ),
    );
  }
}
