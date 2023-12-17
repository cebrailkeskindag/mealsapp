import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';
import 'package:mealsapp/screens/meal_details.dart';
import 'package:mealsapp/widgets/side_drawer_card.dart';

class Favorites extends ConsumerStatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favoriler"),
      ),
      endDrawer: const SideDrawerCard(),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          childAspectRatio: 1,
        ),
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) =>
            _buildListItem(context, favoriteMeals[index]),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, Meal meal) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => MealDetails(meal: meal)));
        },
        child: Column(
          children: [
            Card(
              child: SizedBox(
                width: double.infinity,
                height: 120,
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: Row(
                children: [
                  Text(
                    meal.name,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () {
                      // Butona tıklandığında, favoriye ekleme/çıkarma işlemi gerçekleşir
                      ref
                          .read(favoriteMealsProvider.notifier)
                          .toggleMealFavorite(meal);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
