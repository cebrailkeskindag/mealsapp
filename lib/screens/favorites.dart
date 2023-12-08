import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';

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
        title: const Text("Favoriler"),
      ),
      body: ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) =>
            _buildListItem(context, favoriteMeals[index]),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, Meal meal) {
    return Dismissible(
      key: Key(meal.id), // Benzersiz bir key belirledim
      onDismissed: (direction) {
        // Yemeği favorilerden çıkarma işlemi
        ref.read(favoriteMealsProvider.notifier).toggleMealFavorite(meal);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '${meal.name} favorilerden kaldırıldı.',
              style:const TextStyle(color: Colors.red),
            ),
            
          ),
        );
      },
      background: Container(
        color: Colors.red,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 24.0,
        ),
        alignment: Alignment.centerRight,
        padding:const EdgeInsets.only(right: 16.0),
      ),
      child: ListTile(
        title: Text(meal.name),
        // Diğer yemek detayları veya işlevsellik buraya eklenebilir
      ),
    );
  }
}
