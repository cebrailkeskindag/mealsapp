import 'package:flutter/material.dart';
import 'package:mealsapp/drawer_detail/app_detail.dart';
import 'package:mealsapp/drawer_detail/ceke.me.dart';
import 'package:mealsapp/screens/categories.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/widgets/expansion.dart';

class SideDrawerCard extends StatelessWidget {
  const SideDrawerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  style: TextStyle(fontSize: 36, color: Colors.white),
                ),
              )),
          const ExpansionExample(),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const Categories()));
              },
              child: Text(
                "Anasayfa",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              )),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const Favorites()));
              },
              child: Text(
                "Favoriler",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              )),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => CekeMe()));
              },
              child: Text(
                "Geliştirici",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              )),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const AppDetail()));
              },
              child: Text(
                "Uygulama Hakkında",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              )),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const Favorites()));
              },
              child: Text(
                "Oturumu Kapat",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 18),
              )),
        ],
      ),
    );
  }
}
