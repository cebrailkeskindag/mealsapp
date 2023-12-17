import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/meal_list.dart';

class ExpansionExample extends StatefulWidget {
  const ExpansionExample({Key? key}) : super(key: key);

  @override
  _ExpansionExampleState createState() => _ExpansionExampleState();
}

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
      title: SizedBox(
          height: 40,
          child: Center(
            child: Text(
              category.name,
            ),
          )),
      onTap: () {
        _selectDrawerItem(context, category);
      },
    );
  }).toList();
}

class _ExpansionExampleState extends State<ExpansionExample> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ExpansionTile(
            title: Text(
              'Kategori Seçiniz..',
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
            children: [
              ListTile(
                title: Column(
                  children: _builderDrawItems(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
