import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  // Stful widgetlarda => context globaldir
  // Stless widgetlarda => Sadece build fonksiyonunda context'e erişilebilir.
  void _selectCategory(BuildContext context, Category category) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealList(
            meals: meals
                .where((element) => element.categoryId == category.id)
                .toList())));
  }

  void _selectDrawerItem(BuildContext context, Category category) {
    Navigator.of(context).pop();
    _selectCategory(context, category);
  }

  List<Widget> _builderDrawItems(BuildContext context) {
    return categories.map((category) {
      return ListTile(
        iconColor: Colors.amber,
        title: Text(category.name),
        onTap: () {
          _selectDrawerItem(context, category);
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bir kategori seçin"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const Favorites()));
                },
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/9e/e8/98/9ee898f98a99405e114e6c48d19740ca.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Menü",
                    style: TextStyle(fontSize: 36, color: Colors.white70),
                  ),
                )),
            ..._builderDrawItems(context),
            const Divider(),
            ListTile(
              title: const Text("Vazgeç",style: TextStyle(color: Colors.red),),
              trailing: const Icon(Icons.cancel,color: Colors.red,),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Expanded(
        child: GridView(
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
              )
          ],
        ),
      ),
    );
  }
}
// LMS => Learning Management System