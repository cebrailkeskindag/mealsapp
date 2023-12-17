import 'package:flutter/material.dart';

class AppDetail extends StatelessWidget {
  const AppDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Uygulama Hakkında"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(18),
            child: const Text(
              """
MealsApp, kullanıcılara zengin yemek tarifleri koleksiyonu sunan,
kullanıcıların favori tariflerini kaydedebildiği, kategorilere göre
yemekleri filtreleyebildiği ve yemek detaylarına ulaşabildiği bir
mobil uygulamadır. Bu uygulama, yemek yapmaya ilgi duyan ve farklı
lezzetleri denemek isteyen kullanıcılar için tasarlanmıştır.
        
Uygulama Özellikleri:
        
1. Geniş Tarif Koleksiyonu:
MealsApp, çeşitli kategorilerde
binlerce yemek tarifini içeren geniş bir koleksiyona sahiptir.
Kullanıcılar, kahvaltıdan akşam yemeğine, tatlılardan sağlıklı
atıştırmalıklara kadar birçok kategoride tarif bulabilirler.
        
2. Favori Yemekleri Kaydetme: 
Kullanıcılar, beğendikleri yemek
tariflerini favorilerine ekleyebilirler. Bu sayede, ilgi duydukları
tariflere kolayca erişebilir ve tekrar kullanabilirler.
        
3. Kategorilere Göre Filtreleme: 
Yemek tarifleri, kategorilere
ayrılmıştır. Kullanıcılar, istedikleri kategoriye göre filtreleme
yaparak aradıkları tarifi daha hızlı bulabilirler.
        
4. Detaylı Yemek Bilgisi: 
Her yemek tarifi, detaylı bir açıklama,
malzemeler listesi, adım adım talimatlar ve lezzetli görsellerle
sunulmaktadır. Kullanıcılar, her adımı takip ederek mükemmel sonuca
ulaşabilirler.
        
5. Kullanıcı Dostu Arayüz: 
MealsApp, kullanıcı dostu bir arayüze sahiptir. Kolay gezinme ve 
kullanımıyla her seviyedeki kullanıcı için idealdir.
                
MealsApp, mutfakta yaratıcı olmayı seven herkes için harika bir
yolculuk sunar. Yemek yapma sürecini kolaylaştırır, yeni tarifler
keşfetmeyi teşvik eder ve lezzetli bir yemek deneyimi yaşamanıza
yardımcı olur. Hadi, mutfak maceranıza başlayın ve MealsApp ile
lezzet dolu bir dünyaya adım atın!
""",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ));
  }
}
