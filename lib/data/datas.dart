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
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ8vFXs25AEdGExSbpVBVofroEdKqxRz-LcQ&usqp=CAU",
      ingredients: ["Mercimek", "Su", "Baharatlar"]),
  Meal(
      id: "2",
      categoryId: "5",
      name: "Ayran",
      imageUrl: "",
      ingredients: ["Yoğurt", "Su", "Tuz"]),
  Meal(
      id: "3",
      categoryId: "5",
      name: "Kola",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReJDUkHE-nAvM61l6FIZcDKOT2KkTo3zhDyg&usqp=CAU",
      ingredients: ["Asitler", "Renklendirici", "Şeker"]),
  Meal(
      id: "4",
      categoryId: "6",
      name: "Salata",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb_PFnS3Gt6cS_nVrbNc35zEYxYrgYqX3acw&usqp=CAU",
      ingredients: ["Domates", "Yeşillik", "Baharat"]),
  Meal(
      id: "5",
      categoryId: "4",
      name: "Makaron",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrMgN7ZAOOV72T1JVFKvRjrW4Lb1GH2gW1HQ&usqp=CAU",
      ingredients: ["Krema", "Şeker", "Un"]),
  
  Meal(
      id: "7",
      categoryId: "3",
      name: "Tavuk Şiş",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxG9pWlWH0asWXO9Wn91I431ws4jypyd0jxg&usqp=CAU",
      ingredients: ["Tavuk", "Marinat", "Biber"]),
  
  Meal(
      id: "22",
      categoryId: "3",
      name: "Ispanaklı Börek",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRMQ2ScLhrvd2FZ7w5kUtnNLldGQlvJ3kWQw&usqp=CAU",
      ingredients: ["Ispanak", "Yufka", "Peynir"]),
 
  Meal(
      id: "24",
      categoryId: "3",
      name: "Lahmacun",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsMr3s4tPsHMHVck7SvNfuvBqSOYY96IgEvw&usqp=CAU",
      ingredients: ["Kıyma", "Soğan", "Domates"]),
  Meal(
      id: "25",
      categoryId: "3",
      name: "Tavuklu Makarna",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRyqeuVcGDRjT2cQtafrA9TpJh0-kvR66OEg&usqp=CAU",
      ingredients: ["Makarna", "Tavuk", "Krema"]),
  Meal(
      id: "26",
      categoryId: "3",
      name: "Kabak Mücver",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLgTXGdGv9iVOYy3c_n6vTtcjMRJBV-uWpWA&usqp=CAU",
      ingredients: ["Kabak", "Yumurta", "Un"]),
  Meal(
      id: "27",
      categoryId: "3",
      name: "Karnabahar Graten",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpS5elfHDeWU8TdWqbghHIshFe2OVn4QsAnw&usqp=CAU",
      ingredients: ["Karnabahar", "Beşamel Sos", "Peynir"]),
  Meal(
      id: "8",
      categoryId: "3",
      name: "Fırın Tavuk",
      imageUrl: "",
      ingredients: ["Tavuk", "Baharatlar", "Patates"]),
  Meal(
      id: "9",
      categoryId: "3",
      name: "Karides Izgara",
      imageUrl: "",
      ingredients: ["Karides", "Zeytinyağı", "Baharatlar"]),
  Meal(
      id: "10",
      categoryId: "1",
      name: "Çiğ Köfte",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ng4fuzZyUwYcSfHQLY_YBqpfaLXAqYg_ww&usqp=CAU",
      ingredients: ["Bulgur", "Domates", "Nar Ekşisi"]),
  Meal(
      id: "11",
      categoryId: "5",
      name: "Türk Kahvesi",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOv_i4tRkojYumTRoQBsnii8Fo2DoD6E3QSw&usqp=CAU",
      ingredients: ["Türk Kahvesi Tozu", "Su", "Şeker"]),
  Meal(
      id: "13",
      categoryId: "5",
      name: "Limonata",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXTeOgJPasTcHAnwBGCRXxLOmq5qRlX_akww&usqp=CAU",
      ingredients: ["Limon", "Su", "Şeker"]),
  Meal(
      id: "14",
      categoryId: "5",
      name: "Elma Suyu",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPUJCUq4t9mCqXKcCDorx7lvHJMt-kSr_IQA&usqp=CAU",
      ingredients: ["Elma", "Şeker", "Su"]),
  Meal(
      id: "15",
      categoryId: "5",
      name: "Naneli Limonata",
      imageUrl: "",
      ingredients: ["Nane", "Limon", "Su"]),
  Meal(
      id: "16",
      categoryId: "5",
      name: "Karışık Meyve Suyu",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReIYbl5Xg8Ai3e-um-vBVRpu3QuAHK-OwuLQ&usqp=CAU",
      ingredients: ["Meyveler", "Şeker", "Su"]),
  Meal(
      id: "17",
      categoryId: "5",
      name: "Taze Sıkılmış Portakal Suyu",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH9Kb-uL_WKdnEi-BAWoRmAeO8pS9u576phw&usqp=CAU",
      ingredients: ["Portakal", "Şeker", "Su"]),
  Meal(
      id: "18",
      categoryId: "5",
      name: "Ihlamur Çayı",
      imageUrl: "",
      ingredients: ["Ihlamur", "Su"]),
  Meal(
      id: "19",
      categoryId: "5",
      name: "Papatya Çayı",
      imageUrl: "",
      ingredients: ["Papatya", "Su"]),
  Meal(
      id: "20",
      categoryId: "5",
      name: "Yeşil Çay",
      imageUrl: "",
      ingredients: ["Yeşil Çay", "Su"])
];
