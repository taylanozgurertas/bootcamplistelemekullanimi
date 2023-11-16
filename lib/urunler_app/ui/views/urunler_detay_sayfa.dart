import 'package:bootcamplistelemekullanimi/urunler_app/data/entity/urunler.dart';
import 'package:flutter/material.dart';

class UrunlerDetaySayfa extends StatefulWidget {
  Urunler urun;

  UrunlerDetaySayfa({required this.urun});

  @override
  State<UrunlerDetaySayfa> createState() => _UrunlerDetaySayfaState();
}

class _UrunlerDetaySayfaState extends State<UrunlerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.urun.ad),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.urun.resim}"),
            Text("${widget.urun.fiyat} ₺", style: const TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
