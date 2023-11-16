import 'package:bootcamplistelemekullanimi/filmler_app/ui/views/filmler_sayfa.dart';
import 'package:bootcamplistelemekullanimi/urunler_app/ui/views/urunler_sayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FilmlerSayfa(),
    );
  }
}
