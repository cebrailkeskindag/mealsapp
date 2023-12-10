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
    final favoriteMeals =
        ref.watch(favoriteMealsProvider); // bir veriyi izlemek,takip etmek

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.meal.name),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(favoriteMealsProvider.notifier).toggleMealFavorite(widget
                      .meal); // notifier'i okuyup üzerindeki fonks. çalıştırmak
                },
                icon: Icon(
                  favoriteMeals.contains(widget.meal)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: const Color.fromARGB(255, 245, 86, 0),
                ))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                child: widget.meal.imageUrl != null &&
                        widget.meal.imageUrl.isNotEmpty
                    ? Image.network(widget.meal.imageUrl, fit: BoxFit.cover)
                    : Container(
                        color: Colors.red,
                        width: double.infinity,
                        height: double.infinity,
                        child: const Center(
                          child: Text(
                            "Ürün resmi bulunmamaktadır.",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                color: const Color.fromARGB(300, 200, 10, 50).withOpacity(0.9),
                child: Center(
                  child: Text(
                    widget.meal.name,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ]),
            Container(
              width: double.infinity,
              height: 100,
              color: const Color.fromARGB(300, 200, 10, 50).withOpacity(0.9),
              child: Column(
                children: [
                  const Text(
                    "İngredients",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Divider(
                    height: 2,
                  ),
                  for (String name in widget.meal.ingredients)
                    Text(
                      name,
                      style: const TextStyle(color: Colors.black),
                    ),
                ],
              ),
            ),
          ],
        ));
  }
}
