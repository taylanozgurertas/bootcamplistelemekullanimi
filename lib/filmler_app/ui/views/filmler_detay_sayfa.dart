import 'package:bootcamplistelemekullanimi/filmler_app/data/entity/filmler.dart';
import 'package:flutter/material.dart';

class FilmlerDetaySayfa extends StatefulWidget {
  Filmler film;

  FilmlerDetaySayfa({required this.film});

  @override
  State<FilmlerDetaySayfa> createState() => _FilmlerDetaySayfaState();
}

class _FilmlerDetaySayfaState extends State<FilmlerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.film.ad),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.film.resim}"),
            Text("${widget.film.fiyat} ₺", style: const TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
