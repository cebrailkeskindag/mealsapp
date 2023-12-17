import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';
import 'package:mealsapp/widgets/side_drawer_card.dart';

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
              ))
        ],
      ),
      endDrawer: const SideDrawerCard(),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  width: double.infinity,
                  child: widget.meal.imageUrl != null &&
                          widget.meal.imageUrl.isNotEmpty
                      ? Image.network(widget.meal.imageUrl, fit: BoxFit.cover)
                      : Container(
                          width: double.infinity,
                          height: 200,
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.warning_amber_outlined,
                                  color: Colors.red,
                                  size: 50,
                                ),
                                Text(
                                  "Ürün resmi bulunmamaktadır.",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                )
                              ],
                            ),
                          ),
                        ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Text(
                    widget.meal.name,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "İçindekiler",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      height: 2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    for (String name in widget.meal.ingredients)
                      Text(
                        name,
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Tarif",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      height: 2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.meal.specification,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
