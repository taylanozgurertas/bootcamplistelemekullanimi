import 'package:bootcamplistelemekullanimi/urunler_app/data/entity/urunler.dart';
import 'package:bootcamplistelemekullanimi/urunler_app/ui/views/urunler_detay_sayfa.dart';
import 'package:flutter/material.dart';

class UrunlerSayfa extends StatefulWidget {
  const UrunlerSayfa({Key? key}) : super(key: key);

  @override
  State<UrunlerSayfa> createState() => _UrunlerSayfaState();
}

class _UrunlerSayfaState extends State<UrunlerSayfa> {

  Future<List<Urunler>> urunleriYukle() async{
    var urunlerListesi = <Urunler>[];
    var u1 = Urunler(id: 1, ad: "Macbook Pro 14", resim: "bilgisayar.png", fiyat: 43000);
    var u2 = Urunler(id: 1, ad: "Rayban Club Master", resim: "gozluk.png", fiyat: 2500);
    var u3 = Urunler(id: 1, ad: "Sony ZX Series", resim: "kulaklik.png", fiyat: 4000);
    var u4 = Urunler(id: 1, ad: "Gio Armani", resim: "parfum.png", fiyat: 2000);
    var u5 = Urunler(id: 1, ad: "Casio X Series", resim: "saat.png", fiyat: 8000);
    var u6 = Urunler(id: 1, ad: "Dyson V8", resim: "supurge.png", fiyat: 17000);
    var u7 = Urunler(id: 1, ad: "IPhone 13", resim: "telefon.png", fiyat: 32000);
    urunlerListesi.add(u1);
    urunlerListesi.add(u2);
    urunlerListesi.add(u3);
    urunlerListesi.add(u4);
    urunlerListesi.add(u5);
    urunlerListesi.add(u6);
    urunlerListesi.add(u7);

    return urunlerListesi;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ürünler"),),
      body: FutureBuilder<List<Urunler>>(
        future: urunleriYukle(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            var urunlerListesi = snapshot.data;
            return ListView.builder(
              itemCount: urunlerListesi!.length,
              itemBuilder:(context, indeks) {
                var urun = urunlerListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerDetaySayfa(urun: urun),));
                  },
                  child: Card(
                    child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(width: 128, height: 128,child: Image.asset("resimler/${urun.resim}")),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(urun.ad),
                        const SizedBox(height: 10,),
                        Text("${urun.fiyat} ₺", style: TextStyle(fontSize: 20),),
                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          print("${urun.ad} sepete eklendi");
                        }, child: Text("Sepete Ekle")),
                      ],
                    )
                  ],),),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      )
    );
  }
}
