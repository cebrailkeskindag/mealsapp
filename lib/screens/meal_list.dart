import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/meals_provider.dart';
import 'package:mealsapp/widgets/meal_card.dart';
import 'package:mealsapp/widgets/side_drawer_card.dart';

// Provider'a erişmek isteyen widgetlar
// RiverPod widgetları olmalı.

// StatelessWidget => ConsumerWidget
class MealList extends ConsumerWidget {
  const MealList({Key? key, required this.meals}) : super(key: key);
  final List<Meal> meals;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealsFromState =
        ref.watch(mealsProvider); // global stateden veri okumak

    Widget widget = GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // İki sütunlu bir grid oluştur
          crossAxisSpacing: 2.0, // Sütunlar arası boşluk
          mainAxisSpacing: 2.0, // Satırlar arası boşluk
          childAspectRatio: 1 //en boy oranı
          ),
      padding: const EdgeInsets.all(16),
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealCard(meal: meals[index]),
    );

    if (meals.isEmpty) {
      widget = Center(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Image.asset("images/404.png"),
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Yemek Listesi"),
          centerTitle: true,
        ),
        endDrawer: const SideDrawerCard(),
        body: widget);
  }
}
