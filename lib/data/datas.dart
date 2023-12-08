import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

const categories = [
  Category(id: "1", name: "Başlangıçlar", color: Colors.purple),
  Category(id: "2", name: "Ara Sıcaklar", color: Colors.pink),
  Category(id: "3", name: "Ana Yemekler", color: Colors.yellow),
  Category(id: "4", name: "Tatlılar", color: Colors.red),
  Category(id: "5", name: "İçecekler", color: Colors.blue),
  Category(id: "6", name: "Mezeler", color: Colors.orange),
];

const meals = [
  Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "2",
      categoryId: "5",
      name: "Ayran",
      imageUrl: "https://images.app.goo.gl/Rkg3NFcJrEFFjhJw8",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "3",
      categoryId: "5",
      name: "Kola",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "4",
      categoryId: "6",
      name: "Salata",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "5",
      categoryId: "4",
      name: "Katmer",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "6",
      categoryId: "1",
      name: "Kırmızı Mercimek Çorbası",
      imageUrl: "imageUrl",
      ingredients: ["Mercimek", "Soğan", "Domates"]),
  Meal(
      id: "7",
      categoryId: "3",
      name: "Tavuk Şiş",
      imageUrl: "imageUrl",
      ingredients: ["Tavuk", "Marinat", "Biber"]),
  Meal(
      id: "21",
      categoryId: "4",
      name: "Katmer",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "22",
      categoryId: "3",
      name: "Ispanaklı Börek",
      imageUrl: "imageUrl",
      ingredients: ["Ispanak", "Yufka", "Peynir"]),
  Meal(
      id: "23",
      categoryId: "3",
      name: "Tavuk Şiş",
      imageUrl: "imageUrl",
      ingredients: ["Tavuk", "Marinat", "Biber"]),
  Meal(
      id: "24",
      categoryId: "3",
      name: "Lahmacun",
      imageUrl: "imageUrl",
      ingredients: ["Kıyma", "Soğan", "Domates"]),
  Meal(
      id: "25",
      categoryId: "3",
      name: "Tavuklu Makarna",
      imageUrl: "imageUrl",
      ingredients: ["Makarna", "Tavuk", "Krema"]),
  Meal(
      id: "26",
      categoryId: "3",
      name: "Kabak Mücver",
      imageUrl: "imageUrl",
      ingredients: ["Kabak", "Yumurta", "Un"]),
  Meal(
      id: "27",
      categoryId: "3",
      name: "Karnabahar Graten",
      imageUrl: "imageUrl",
      ingredients: ["Karnabahar", "Beşamel Sos", "Peynir"]),
  Meal(
      id: "8",
      categoryId: "3",
      name: "Fırın Tavuk",
      imageUrl: "imageUrl",
      ingredients: ["Tavuk", "Baharatlar", "Patates"]),
  Meal(
      id: "9",
      categoryId: "3",
      name: "Karides Izgara",
      imageUrl: "imageUrl",
      ingredients: ["Karides", "Zeytinyağı", "Baharatlar"]),
  Meal(
      id: "10",
      categoryId: "1",
      name: "Kısır",
      imageUrl: "imageUrl",
      ingredients: ["Bulgur", "Domates", "Nar Ekşisi"]),
  Meal(
      id: "11",
      categoryId: "5",
      name: "Türk Kahvesi",
      imageUrl: "imageUrl",
      ingredients: ["Türk Kahvesi Tozu", "Su", "Şeker"]),
  Meal(
      id: "12",
      categoryId: "5",
      name: "Ayran",
      imageUrl: "imageUrl",
      ingredients: ["Yoğurt", "Su", "Tuz"]),
  Meal(
      id: "13",
      categoryId: "5",
      name: "Limonata",
      imageUrl: "imageUrl",
      ingredients: ["Limon", "Su", "Şeker"]),
  Meal(
      id: "14",
      categoryId: "5",
      name: "Elma Suyu",
      imageUrl: "imageUrl",
      ingredients: ["Elma", "Şeker", "Su"]),
  Meal(
      id: "15",
      categoryId: "5",
      name: "Naneli Limonata",
      imageUrl: "imageUrl",
      ingredients: ["Nane", "Limon", "Su"]),
  Meal(
      id: "16",
      categoryId: "5",
      name: "Karışık Meyve Suyu",
      imageUrl: "imageUrl",
      ingredients: ["Meyveler", "Şeker", "Su"]),
  Meal(
      id: "17",
      categoryId: "5",
      name: "Taze Sıkılmış Portakal Suyu",
      imageUrl: "imageUrl",
      ingredients: ["Portakal", "Şeker", "Su"]),
  Meal(
      id: "18",
      categoryId: "5",
      name: "Ihlamur Çayı",
      imageUrl: "imageUrl",
      ingredients: ["Ihlamur", "Su"]),
  Meal(
      id: "19",
      categoryId: "5",
      name: "Papatya Çayı",
      imageUrl: "imageUrl",
      ingredients: ["Papatya", "Su"]),
  Meal(
      id: "20",
      categoryId: "5",
      name: "Yeşil Çay",
      imageUrl: "imageUrl",
      ingredients: ["Yeşil Çay", "Su"])
];
