import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';
import 'package:mealsapp/widgets/side_drawer_card.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // Stful widgetlarda => context globaldir
  void _selectCategory(BuildContext context, Category category) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealList(
            meals: meals
                .where((element) => element.categoryId == category.id)
                .toList())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yemek Kategorileri"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => const Favorites()));
          },
        ),
      ),
      endDrawer: const SideDrawerCard(),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1),
        children: [
          for (final category in categories)
            CategoryCard(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            ),
        ],
      ),
    );
  }
}
// LMS => Learning Management System