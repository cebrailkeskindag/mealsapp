import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';

// Stateful Widget => ConsumerStatefulWidget
// State => ConsumerState
class MealDetails extends ConsumerStatefulWidget {
  const MealDetails({super.key, required this.meal});
  final Meal meal;

  @override
  ConsumerState<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends ConsumerState<MealDetails> {
  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteMealsProvider); // bir veriyi izlemek,takip etmek

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.meal.name),
          actions: [
            IconButton(
                onPressed: () {
                  ref
                  .read(favoriteMealsProvider.notifier)
                  .toggleMealFavorite(widget.meal);  // notifier'i okuyup üzerindeki fonks. çalıştırmak
                },
                icon: Icon(favoriteMeals.contains(widget.meal)
                    ? Icons.favorite
                    : Icons.favorite_border))
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: 400,
              height: 250,
              color: Colors.amberAccent.withOpacity(0.7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.meal.name,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              right: 10.0,
              child: Image.network(
                  "https://www.floryabasakyemek.com/wp-content/uploads/2018/06/florya-basak-yemek-header-1600x925.jpg"),
            ),
          ],
        ));
  }
}
