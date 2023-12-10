import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/screens/meal_details.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => MealDetails(meal: meal)));
        },
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            child: meal.imageUrl != null && meal.imageUrl.isNotEmpty
                ? Image.network(meal.imageUrl, fit: BoxFit.cover)
                : Container(
                    color: Colors.redAccent,
                    width: double.infinity,
                    height: 200,
                    child: const Center(
                      child: Text(
                        "Ürün resmi bulunmamaktadır.",
                        style: TextStyle(fontSize: 16),
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
                meal.name,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
