import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/screens/meal_details.dart';

class MealCard extends ConsumerWidget {
  const MealCard({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => MealDetails(meal: meal)));
        },
        child: Column(children: [
          Card(
            child: SizedBox(
              width: double.infinity,
              height: 120,
              child: meal.imageUrl != null && meal.imageUrl.isNotEmpty
                  ? Image.network(meal.imageUrl, fit: BoxFit.cover)
                  : SizedBox(
                      width: double.infinity,
                      height: 120,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp17XC_tLHuCcVWwgOTMVAZqDvM7EOtXWVwg&usqp=CAU")),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: Center(
              child:
                  Text(meal.name),
            ),
          ),
        ]),
      ),
    );
  }
}
